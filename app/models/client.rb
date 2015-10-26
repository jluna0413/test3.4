class Client < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  acts_as_votable 
end
