class CreateStepsTaken < ActiveRecord::Migration
  def change
    create_table :steps_takens do |t|
      t.integer :taken
      t.date :entry_date
    end
  end
end
