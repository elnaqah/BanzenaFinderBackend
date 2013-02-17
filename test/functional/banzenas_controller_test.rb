require 'test_helper'

class BanzenasControllerTest < ActionController::TestCase
  setup do
    @banzena = banzenas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banzenas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banzena" do
    assert_difference('Banzena.count') do
      post :create, banzena: @banzena.attributes
    end

    assert_redirected_to banzena_path(assigns(:banzena))
  end

  test "should show banzena" do
    get :show, id: @banzena
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banzena
    assert_response :success
  end

  test "should update banzena" do
    put :update, id: @banzena, banzena: @banzena.attributes
    assert_redirected_to banzena_path(assigns(:banzena))
  end

  test "should destroy banzena" do
    assert_difference('Banzena.count', -1) do
      delete :destroy, id: @banzena
    end

    assert_redirected_to banzenas_path
  end
end
