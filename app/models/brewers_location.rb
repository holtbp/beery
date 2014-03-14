# == Schema Information
#
# Table name: brewers_locations
#
#  id          :integer          not null, primary key
#  brewer_id   :integer
#  location_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class BrewersLocation < ActiveRecord::Base
  belongs_to :brewer
  belongs_to :location
end
