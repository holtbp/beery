class BrewersLocation < ActiveRecord::Base
  belongs_to :brewer
  belongs_to :location
end
