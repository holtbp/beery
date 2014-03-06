class User < ActiveRecord::Base
  has_many :beers, :through => :beers_user
  has_many :beers_user
  belongs_to :location
end
