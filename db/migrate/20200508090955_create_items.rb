class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.float :cost
      t.boolean :is_alive, default: true
      t.boolean :bought, default: false
      t.string :link

      t.timestamps
    end
  end
end
