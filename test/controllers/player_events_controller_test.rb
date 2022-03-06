require 'test_helper'

class PlayerEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_event = player_events(:one)
  end

  test "should get index" do
    get player_events_url
    assert_response :success
  end

  test "should get new" do
    get new_player_event_url
    assert_response :success
  end

  test "should create player_event" do
    assert_difference('PlayerEvent.count') do
      post player_events_url, params: { player_event: { event_id: @player_event.event_id, player_id: @player_event.player_id } }
    end

    assert_redirected_to player_event_url(PlayerEvent.last)
  end

  test "should show player_event" do
    get player_event_url(@player_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_event_url(@player_event)
    assert_response :success
  end

  test "should update player_event" do
    patch player_event_url(@player_event), params: { player_event: { event_id: @player_event.event_id, player_id: @player_event.player_id } }
    assert_redirected_to player_event_url(@player_event)
  end

  test "should destroy player_event" do
    assert_difference('PlayerEvent.count', -1) do
      delete player_event_url(@player_event)
    end

    assert_redirected_to player_events_url
  end
end
