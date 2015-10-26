class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :client, index: true
      t.text :description
      t.datetime :jobstart
      t.datetime :jobend
      t.string :talenttype
      t.decimal :payrate
      t.string :jobzip
      t.text :jobaddress

      t.timestamps
    end
  end
end
