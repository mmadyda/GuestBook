require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get :index
    assert_response :success
    assetrt_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil assigns(:post)
  end
end
