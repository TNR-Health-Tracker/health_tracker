require 'test_helper'

class HealthTrackersControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert response.body.include?("Tracker")
  end
end
