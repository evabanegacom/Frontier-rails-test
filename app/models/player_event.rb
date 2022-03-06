class PlayerEvent < ApplicationRecord
  belongs_to :attendees, class_name: 'Player', foreign_key: :player_id
  belongs_to :attended_events, class_name: 'Event', foreign_key: :event_id
end
