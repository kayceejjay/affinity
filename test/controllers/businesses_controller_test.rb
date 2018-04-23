require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get businesses_url
    assert_response :success
  end

  test "should get new" do
    get new_business_url
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post businesses_url, params: { business: { address1: @business.address1, address2: @business.address2, category: @business.category, city: @business.city, email: @business.email, fee: @business.fee, leader_name: @business.leader_name, name: @business.name, phone: @business.phone, receive_email: @business.receive_email, rep_email: @business.rep_email, rep_phone: @business.rep_phone, service_product: @business.service_product, state: @business.state, website: @business.website, zip: @business.zip } }
    end

    assert_redirected_to business_url(Business.last)
  end

  test "should show business" do
    get business_url(@business)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_url(@business)
    assert_response :success
  end

  test "should update business" do
    patch business_url(@business), params: { business: { address1: @business.address1, address2: @business.address2, category: @business.category, city: @business.city, email: @business.email, fee: @business.fee, leader_name: @business.leader_name, name: @business.name, phone: @business.phone, receive_email: @business.receive_email, rep_email: @business.rep_email, rep_phone: @business.rep_phone, service_product: @business.service_product, state: @business.state, website: @business.website, zip: @business.zip } }
    assert_redirected_to business_url(@business)
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete business_url(@business)
    end

    assert_redirected_to businesses_url
  end
end
