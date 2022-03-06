json.extract! player, :id, :name, :location, :handicap, :created_at, :updated_at
json.url player_url(player, format: :json)
