class AddWaisthipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :waisthip, :text
  end
end
