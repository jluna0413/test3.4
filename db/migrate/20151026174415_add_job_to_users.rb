class AddJobToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :job, index: true
  end
end
