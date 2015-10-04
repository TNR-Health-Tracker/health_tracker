require 'test_helper'

class FoodEntryTest < ActiveSupport::TestCase
  test "can get calories consumed" do
    consumed_today = FoodEntry.calories_today

    assert_equal 100, consumed_today
  end

  test "should return 0 if no food entries" do
    FoodEntry.destroy_all

    consumed_today = FoodEntry.calories_today

    assert_equal 0, consumed_today
  end
end
