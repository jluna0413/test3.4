class AddAddress2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address2, :text
  end
end
