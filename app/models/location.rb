class Location < ActiveRecord::Base
  has_many :users
  has_many :brewers, :through => :brewers_location
  belongs_to :country
end
