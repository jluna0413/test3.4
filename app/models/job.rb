class Job < ActiveRecord::Base
  belongs_to :client
  has_many :users
  has_and_belongs_to_many :users
  validates_formatting_of :jobzip, using: :us_zip
  acts_as_votable 
end
