class AddClientstatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :clientstatus, :boolean
  end
end
