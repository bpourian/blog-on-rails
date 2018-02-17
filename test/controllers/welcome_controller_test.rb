require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "Should have expected text on page" do
    get welcome_index_url
    assert_select "h2", "the sky was cloudless and of a deep dark blue"
  end

end
