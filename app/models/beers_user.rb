# == Schema Information
#
# Table name: beers_users
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class BeersUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer
end
