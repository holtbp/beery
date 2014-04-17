require 'test_helper'

class BeerTest < ActiveSupport::TestCase

  def test_beer_belongs_to_brewer
    brewer = brewers(:guinness)
    beer = Beer.create!(:brewer => brewer, :name => 'name')
    assert_equal brewer, beer.brewer
  end

end
