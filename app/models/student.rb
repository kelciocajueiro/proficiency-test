class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :register_number, presence: true

  has_many :classrooms
end
