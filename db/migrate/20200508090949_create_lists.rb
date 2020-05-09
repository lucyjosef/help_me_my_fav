class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.float :max_budget
      t.float :min_budget, default: 0.0
      t.string :color
      t.string :status, default: "open"

      t.timestamps
    end
  end
end
