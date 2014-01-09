require 'test_helper'

class CoyotesControllerTest < ActionController::TestCase
  setup do
    @coyote = coyotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coyotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coyote" do
    assert_difference('Coyote.count') do
      post :create, coyote: {  }
    end

    assert_redirected_to coyote_path(assigns(:coyote))
  end

  test "should show coyote" do
    get :show, id: @coyote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coyote
    assert_response :success
  end

  test "should update coyote" do
    patch :update, id: @coyote, coyote: {  }
    assert_redirected_to coyote_path(assigns(:coyote))
  end

  test "should destroy coyote" do
    assert_difference('Coyote.count', -1) do
      delete :destroy, id: @coyote
    end

    assert_redirected_to coyotes_path
  end
end
