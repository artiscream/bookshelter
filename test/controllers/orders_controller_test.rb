require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get orders_new_url
    assert_response :success
  end

  test "should get index" do
    get orders_index_url
    assert_response :success
  end

  test "should get pay" do
    get orders_pay_url
    assert_response :success
  end

  test "should get delete" do
    get orders_delete_url
    assert_response :success
  end

end
