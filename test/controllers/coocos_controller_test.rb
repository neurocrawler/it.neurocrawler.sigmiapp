require 'test_helper'

class CoocosControllerTest < ActionController::TestCase
  setup do
    @cooco = coocos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coocos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cooco" do
    assert_difference('Cooco.count') do
      post :create, cooco: { content: @cooco.content, user_id: @cooco.user_id }
    end

    assert_redirected_to cooco_path(assigns(:cooco))
  end

  test "should show cooco" do
    get :show, id: @cooco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cooco
    assert_response :success
  end

  test "should update cooco" do
    patch :update, id: @cooco, cooco: { content: @cooco.content, user_id: @cooco.user_id }
    assert_redirected_to cooco_path(assigns(:cooco))
  end

  test "should destroy cooco" do
    assert_difference('Cooco.count', -1) do
      delete :destroy, id: @cooco
    end

    assert_redirected_to coocos_path
  end
end
