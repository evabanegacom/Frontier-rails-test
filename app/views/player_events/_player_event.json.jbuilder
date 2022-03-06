json.extract! player_event, :id, :player_id, :event_id, :created_at, :updated_at
json.url player_event_url(player_event, format: :json)
