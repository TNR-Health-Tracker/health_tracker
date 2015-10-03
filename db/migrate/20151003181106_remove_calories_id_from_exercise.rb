class RemoveCaloriesIdFromExercise < ActiveRecord::Migration
  def change
    remove_column :exercises, :calories_id, :integer
  end
end
