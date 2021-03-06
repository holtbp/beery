require 'test_helper'

class BeersControllerTest < ActionController::TestCase
  setup do
    @beer = beers(:irish_death)
  end

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_equal JSON.parse(response.body).first['name'], Beer.first.name
  end

  test "should show beer" do
    get :show, id: @beer, format: :json
    assert_response :success
    assert_equal JSON.parse(response.body)['name'], @beer.name
  end

  test "should get new" do
    get :new, format: :json
    assert_response :success
  end

  test "should create beer" do
    assert_difference('Beer.count') do
     post :create, beer: { name: 'beer name' }
    end

    assert_redirected_to beer_path(assigns(:beer))
  end

  test "should get edit" do
    get :edit, id: @beer
    assert_response :success
  end

  test "should update beer" do
    patch :update, id: @beer, beer: { name: 'new beer name'  }
    assert_redirected_to beer_path(assigns(:beer))
    assert_equal 'new beer name', assigns(:beer).name
  end

  test "should destroy beer" do
    assert_difference('Beer.count', -1) do
     delete :destroy, id: @beer
    end

    assert_redirected_to beers_path
  end
end
