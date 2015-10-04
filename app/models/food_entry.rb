class FoodEntry < ActiveRecord::Base

  def calories
    self.count
  end

  def entry_date
    self.date
  end
end
