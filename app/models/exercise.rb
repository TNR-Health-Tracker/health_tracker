class Exercise < ActiveRecord::Base
  belongs_to :exercise_type
  validates :exercise_type, presence: true
  validates :entry_date, presence: true
end
