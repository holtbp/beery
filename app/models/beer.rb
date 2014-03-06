class Beer < ActiveRecord::Base
  belongs_to :brewer
  belongs_to :style
  has_many :users, :through => :users_beers
  has_many :users_beers
end
