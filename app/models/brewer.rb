# == Schema Information
#
# Table name: brewers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  country_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Brewer < ActiveRecord::Base
  has_many :beers
  has_many :styles
  belongs_to :country
end
