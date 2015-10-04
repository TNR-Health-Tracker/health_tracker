class AddCaloriesBurnedToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :calories_burned, :integer
  end
end
