class Beer < ActiveRecord::Base
  belongs_to :brewer
  belongs_to :style
  belongs_to :country
  has_many :users, :through => :beers_user
  has_many :beers_user
end
