# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :string(255)
#  longitude  :string(255)
#  city       :string(255)
#  state      :string(255)
#  metadata   :string(255)
#  country_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
  has_many :users
  has_many :brewers, :through => :brewers_location
  belongs_to :country
end
