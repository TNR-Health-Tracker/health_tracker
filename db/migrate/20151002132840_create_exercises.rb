class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id
      t.integer :calories_id
      t.date :entry_date
    end
  end
end
