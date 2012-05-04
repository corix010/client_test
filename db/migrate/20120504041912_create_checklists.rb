class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :vehicle
      t.string :status
      t.string :location

      t.timestamps
    end
  end
end
