require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can create exercises" do
    invalid = Exercise.new
    refute invalid.save
    invalid.exercise_type = ExerciseType.new(name: "Pilates")
    refute invalid.save

    valid = Exercise.new(entry_date:Time.now.to_date,)
    valid.exercise_type = ExerciseType.new(name: "Pilates")
    assert valid.save
    assert valid.reload.exercise_type.name == "Pilates" 
  end
end
