class AddPantlengthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pantlength, :integer
  end
end
