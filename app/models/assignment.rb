class Assignment < ActiveRecord::Base

  belongs_to :person
  belongs_to :location

  validates :role, uniqueness: true
end
