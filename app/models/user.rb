class User < ActiveRecord::Base
  has_many :beers, :through => :users_beers
  has_many :users_beers
  belongs_to :location
end
