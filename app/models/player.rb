class Player < ApplicationRecord
  has_many :player_events, dependent: :destroy
  has_many :attended_events, class_name: 'Event', inverse_of: 'attendees', through: :player_events,
  foreign_key: :player_id
end
