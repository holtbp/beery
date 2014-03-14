# == Schema Information
#
# Table name: styles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Style < ActiveRecord::Base
  has_many :beers
  has_many :brewers
end
