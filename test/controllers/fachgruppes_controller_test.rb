require 'test_helper'

class FachgruppesControllerTest < ActionController::TestCase
  setup do
    @fachgruppe = fachgruppes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fachgruppes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fachgruppe" do
    assert_difference('Fachgruppe.count') do
      post :create, fachgruppe: { fachgruppenname: @fachgruppe.fachgruppenname, karteikarte_id: @fachgruppe.karteikarte_id }
    end

    assert_redirected_to fachgruppe_path(assigns(:fachgruppe))
  end

  test "should show fachgruppe" do
    get :show, id: @fachgruppe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fachgruppe
    assert_response :success
  end

  test "should update fachgruppe" do
    patch :update, id: @fachgruppe, fachgruppe: { fachgruppenname: @fachgruppe.fachgruppenname, karteikarte_id: @fachgruppe.karteikarte_id }
    assert_redirected_to fachgruppe_path(assigns(:fachgruppe))
  end

  test "should destroy fachgruppe" do
    assert_difference('Fachgruppe.count', -1) do
      delete :destroy, id: @fachgruppe
    end

    assert_redirected_to fachgruppes_path
  end
end
