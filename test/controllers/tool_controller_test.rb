require 'test_helper'

class ToolControllerTest < ActionDispatch::IntegrationTest
  test "should get my_history" do
    get tool_my_history_url
    assert_response :success
  end

end
