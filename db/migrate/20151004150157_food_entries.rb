class FoodEntries < ActiveRecord::Migration
  def change
    create_table :food do |t|
      t.string :name
      t.integer :calories
      t.date :entry_date

      t.timestamps null: false
    end
  end
end
