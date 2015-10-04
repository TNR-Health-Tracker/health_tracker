class FoodEntry < ActiveRecord::Base

  # def calories
  #   self.count
  # end

  # def entry_date
  #   self.date
  # end

  def self.calories_today
    consumed_today = self.where("entry_date = ?", Date.today.strftime('%Y-%m-%d'))
    consumed_today.empty? ? 0 : consumed_today.sum('calories')
  end
end
