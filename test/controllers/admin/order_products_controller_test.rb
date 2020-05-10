require 'test_helper'

class Admin::OrderProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_order_products_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_order_products_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_order_products_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_order_products_edit_url
    assert_response :success
  end

end
