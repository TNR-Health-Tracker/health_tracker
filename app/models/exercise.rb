class Exercise < ActiveRecord::Base
  belongs_to :exercise_type
  validates :exercise_type, presence: true
  validates :entry_date, presence: true

  def self.burned_today
    burned_today = self.where("entry_date = ?", Date.today.strftime('%Y-%m-%d'))
    burned_today.empty? ? 0 : burned_today.sum('calories_burned')
  end
end
