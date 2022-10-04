require "test_helper"

class Public::MainPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_main_posts_show_url
    assert_response :success
  end
end
