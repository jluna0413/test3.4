class Job < ActiveRecord::Base
  belongs_to :client
  has_many :users
end
