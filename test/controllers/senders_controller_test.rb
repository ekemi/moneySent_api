require "test_helper"

class SendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sender = senders(:one)
  end

  test "should get index" do
    get senders_url, as: :json
    assert_response :success
  end

  test "should create sender" do
    assert_difference('Sender.count') do
      post senders_url, params: { sender: { amount: @sender.amount, code: @sender.code, first_name: @sender.first_name, last_name: @sender.last_name, location_id: @sender.location_id } }, as: :json
    end

    assert_response 201
  end

  test "should show sender" do
    get sender_url(@sender), as: :json
    assert_response :success
  end

  test "should update sender" do
    patch sender_url(@sender), params: { sender: { amount: @sender.amount, code: @sender.code, first_name: @sender.first_name, last_name: @sender.last_name, location_id: @sender.location_id } }, as: :json
    assert_response 200
  end

  test "should destroy sender" do
    assert_difference('Sender.count', -1) do
      delete sender_url(@sender), as: :json
    end

    assert_response 204
  end
end
