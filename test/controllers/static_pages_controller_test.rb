require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get static_pages_edit_url
    assert_response :success
  end

end
