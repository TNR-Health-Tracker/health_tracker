require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "can get starting weight" do
    starting_weight = Weight.initial_weight

    assert_equal 140, starting_weight
  end

  test "can get most current weight" do
    current_weight = Weight.current_weight

    assert_equal 160, current_weight
  end

  test "return 0 when no weight entries" do
    Weight.destroy_all
    starting_weight = Weight.initial_weight

    assert_equal 0, starting_weight

    current_weight = Weight.current_weight

    assert_equal 0, current_weight
  end


end
