require 'test_helper'

class BeerTest < ActiveSupport::TestCase

  def test_beer_belongs_to_brewer
    # country = Country.create!(:name => 'USA', :iso_code => 'us')
    # brewer = Brewer.create!(:name => 'Anheuser-Busch', :country => country)
    # beer = Beer.create!(:brewer => brewer)
    # assert_equal brewer, beer.brewer
  end

end
