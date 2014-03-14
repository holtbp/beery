# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  email       :string(255)
#  age         :string(255)
#  gender      :string(255)
#  location_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class User < ActiveRecord::Base
  has_many :beers, :through => :beers_user
  has_many :beers_user
  belongs_to :location
end
