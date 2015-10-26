class AddIsclientToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isclient, :boolean
  end
end
