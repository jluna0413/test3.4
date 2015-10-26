class Job < ActiveRecord::Base
  belongs_to :client
  has_many :users
  has_and_belongs_to_many :users
end
