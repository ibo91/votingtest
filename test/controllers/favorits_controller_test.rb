require 'test_helper'

class FavoritsControllerTest < ActionController::TestCase
  setup do
    @favorit = favorits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorit" do
    assert_difference('Favorit.count') do
      post :create, favorit: { karteikarte_id: @favorit.karteikarte_id, user_id: @favorit.user_id }
    end

    assert_redirected_to favorit_path(assigns(:favorit))
  end

  test "should show favorit" do
    get :show, id: @favorit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorit
    assert_response :success
  end

  test "should update favorit" do
    patch :update, id: @favorit, favorit: { karteikarte_id: @favorit.karteikarte_id, user_id: @favorit.user_id }
    assert_redirected_to favorit_path(assigns(:favorit))
  end

  test "should destroy favorit" do
    assert_difference('Favorit.count', -1) do
      delete :destroy, id: @favorit
    end

    assert_redirected_to favorits_path
  end
end
