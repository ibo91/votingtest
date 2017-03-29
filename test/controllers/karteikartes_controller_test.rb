require 'test_helper'

class KarteikartesControllerTest < ActionController::TestCase
  setup do
    @karteikarte = karteikartes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karteikartes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karteikarte" do
    assert_difference('Karteikarte.count') do
      post :create, karteikarte: { durchschnittsbewertung: @karteikarte.durchschnittsbewertung, rueckseite: @karteikarte.rueckseite, titel: @karteikarte.titel, vorderseite: @karteikarte.vorderseite }
    end

    assert_redirected_to karteikarte_path(assigns(:karteikarte))
  end

  test "should show karteikarte" do
    get :show, id: @karteikarte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karteikarte
    assert_response :success
  end

  test "should update karteikarte" do
    patch :update, id: @karteikarte, karteikarte: { durchschnittsbewertung: @karteikarte.durchschnittsbewertung, rueckseite: @karteikarte.rueckseite, titel: @karteikarte.titel, vorderseite: @karteikarte.vorderseite }
    assert_redirected_to karteikarte_path(assigns(:karteikarte))
  end

  test "should destroy karteikarte" do
    assert_difference('Karteikarte.count', -1) do
      delete :destroy, id: @karteikarte
    end

    assert_redirected_to karteikartes_path
  end
end
