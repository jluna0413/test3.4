class AddAddress1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address1, :text
  end
end
