class AddTopsuitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :topsuit, :text
  end
end
