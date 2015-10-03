class Exercise < ActiveRecord::Base
  belongs_to :exercise_type
  has_many :calories
  validates :exercise_type, presence: true
  validates :entry_date, presence: true, uniqueness: true

end
