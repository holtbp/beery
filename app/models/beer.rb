# == Schema Information
#
# Table name: beers
#
#  id         :integer          not null, primary key
#  brewer_id  :integer
#  style_id   :integer
#  country_id :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Beer < ActiveRecord::Base
  belongs_to :brewer
  belongs_to :style
  belongs_to :country
  has_many :users, :through => :beers_user
  has_many :beers_user

  validates :name, presence: true

  def as_json(options = {})
    json = super(options)
    json[:brewer] = brewer if brewer.present?
    json[:style] = style if style.present?
    json[:country] = country if country.present?
    json
  end
end
