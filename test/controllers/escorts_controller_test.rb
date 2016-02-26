require 'test_helper'

class EscortsControllerTest < ActionController::TestCase
  setup do
    @escort = escorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:escorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create escort" do
    assert_difference('Escort.count') do
      post :create, escort: { age: @escort.age, description: @escort.description, name: @escort.name, rate_per_hour_in_cents: @escort.rate_per_hour_in_cents }
    end

    assert_redirected_to escort_path(assigns(:escort))
  end

  test "should show escort" do
    get :show, id: @escort
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @escort
    assert_response :success
  end

  test "should update escort" do
    patch :update, id: @escort, escort: { age: @escort.age, description: @escort.description, name: @escort.name, rate_per_hour_in_cents: @escort.rate_per_hour_in_cents }
    assert_redirected_to escort_path(assigns(:escort))
  end

  test "should destroy escort" do
    assert_difference('Escort.count', -1) do
      delete :destroy, id: @escort
    end

    assert_redirected_to escorts_path
  end
end
