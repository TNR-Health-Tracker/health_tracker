class CreateStepsTaken < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :taken
      t.date :entry_date
    end
  end
end
