require "test_helper"

class ReceiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receiver = receivers(:one)
  end

  test "should get index" do
    get receivers_url, as: :json
    assert_response :success
  end

  test "should create receiver" do
    assert_difference('Receiver.count') do
      post receivers_url, params: { receiver: { completed: @receiver.completed, first_name: @receiver.first_name, last_name: @receiver.last_name, sender_id: @receiver.sender_id } }, as: :json
    end

    assert_response 201
  end

  test "should show receiver" do
    get receiver_url(@receiver), as: :json
    assert_response :success
  end

  test "should update receiver" do
    patch receiver_url(@receiver), params: { receiver: { completed: @receiver.completed, first_name: @receiver.first_name, last_name: @receiver.last_name, sender_id: @receiver.sender_id } }, as: :json
    assert_response 200
  end

  test "should destroy receiver" do
    assert_difference('Receiver.count', -1) do
      delete receiver_url(@receiver), as: :json
    end

    assert_response 204
  end
end
