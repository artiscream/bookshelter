require 'test_helper'

class WaitlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get waitlists_new_url
    assert_response :success
  end

  test "should get index" do
    get waitlists_index_url
    assert_response :success
  end

  test "should get delete" do
    get waitlists_delete_url
    assert_response :success
  end

end
