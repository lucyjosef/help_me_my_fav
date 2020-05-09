class AddUserIdTolists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :user_id, :integer
    add_column :items, :list_id, :integer
    add_column :tags, :item_id, :integer
  end
end
