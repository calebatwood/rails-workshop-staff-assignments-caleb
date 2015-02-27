class Assignment < ActiveRecord::Base

  belongs_to :person
  belongs_to :location

  validate :unique_location
  validates :location_id, :person_id, :role, presence: true

  def unique_location
    if person.assignments.find_by(location_id: location_id, role: role)
      errors.add(:base, "People cannot be assigned to the same location with the same role")
    end
  end


end
