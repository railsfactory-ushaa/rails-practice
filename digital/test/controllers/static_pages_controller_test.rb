require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get introduction" do
    get :introduction
    assert_response :success
  end

end
