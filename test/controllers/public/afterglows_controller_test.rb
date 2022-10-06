require "test_helper"

class Public::AfterglowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_afterglows_index_url
    assert_response :success
  end

  test "should get new" do
    get public_afterglows_new_url
    assert_response :success
  end

  test "should get show" do
    get public_afterglows_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_afterglows_edit_url
    assert_response :success
  end
end
