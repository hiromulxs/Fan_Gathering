require "test_helper"

class Public::CommunityControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_community_new_url
    assert_response :success
  end

  test "should get index" do
    get public_community_index_url
    assert_response :success
  end

  test "should get show" do
    get public_community_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_community_edit_url
    assert_response :success
  end
end
