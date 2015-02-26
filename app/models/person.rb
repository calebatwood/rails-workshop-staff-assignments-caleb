class Person < ActiveRecord::Base

  has_many :assignments, dependent: :destroy
  has_many :locations, through: :assignments, dependent: :destroy

  validates :title, presence: {message: "or First name can\'t both be blank"}, unless: :first_name?
  validates :first_name, presence: {message: "or title can\'t both be blank"}, unless: :title?
  validates :last_name, presence: true

  def first_name?
    first_name.present?
  end

  def title?
    title.present?
  end

  def full_name
    "#{title} #{first_name} #{last_name}"
  end

end
