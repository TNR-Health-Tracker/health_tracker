class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :pounds
      t.date :entry_date

      t.timestamps null: false
    end
  end
end
