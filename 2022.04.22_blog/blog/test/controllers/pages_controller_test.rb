require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get posts" do
    get pages_posts_url
    assert_response :success
  end

  test "should get ingreso" do
    get pages_ingreso_url
    assert_response :success
  end
end
