class Person < ActiveRecord::Base

  validates :name_title?, presence: true
  validates :last_name, presence: true

  def name_title?
    first_name.present? || title.present?
  end

  def full_name
    "#{title} #{first_name} #{last_name}"
  end

end
