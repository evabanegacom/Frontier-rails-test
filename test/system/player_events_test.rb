require "application_system_test_case"

class PlayerEventsTest < ApplicationSystemTestCase
  setup do
    @player_event = player_events(:one)
  end

  test "visiting the index" do
    visit player_events_url
    assert_selector "h1", text: "Player Events"
  end

  test "creating a Player event" do
    visit player_events_url
    click_on "New Player Event"

    fill_in "Event", with: @player_event.event_id
    fill_in "Player", with: @player_event.player_id
    click_on "Create Player event"

    assert_text "Player event was successfully created"
    click_on "Back"
  end

  test "updating a Player event" do
    visit player_events_url
    click_on "Edit", match: :first

    fill_in "Event", with: @player_event.event_id
    fill_in "Player", with: @player_event.player_id
    click_on "Update Player event"

    assert_text "Player event was successfully updated"
    click_on "Back"
  end

  test "destroying a Player event" do
    visit player_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player event was successfully destroyed"
  end
end
