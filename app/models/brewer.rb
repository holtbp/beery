class Brewer < ActiveRecord::Base
  has_many :beers
  has_many :styles
end
