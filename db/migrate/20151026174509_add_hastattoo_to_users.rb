class AddHastattooToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hastattoo, :boolean
  end
end
