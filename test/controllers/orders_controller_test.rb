require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url, as: :json
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { address_1: @order.address_1, address_2: @order.address_2, address_3: @order.address_3, address_4: @order.address_4, first_name: @order.first_name, item_code: @order.item_code, item_name: @order.item_name, last_name: @order.last_name, order_id: @order.order_id, site_id: @order.site_id, user_id: @order.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show order" do
    get order_url(@order), as: :json
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { address_1: @order.address_1, address_2: @order.address_2, address_3: @order.address_3, address_4: @order.address_4, first_name: @order.first_name, item_code: @order.item_code, item_name: @order.item_name, last_name: @order.last_name, order_id: @order.order_id, site_id: @order.site_id, user_id: @order.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order), as: :json
    end

    assert_response 204
  end
end
