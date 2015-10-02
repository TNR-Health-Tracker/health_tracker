class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.integer :in
      t.integer :out
      t.date :entry_date

      t.timestamps null: false
    end
  end
end
