class AddGovtidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :govtid, :string
  end
end
