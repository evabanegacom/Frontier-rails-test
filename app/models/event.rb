class Event < ApplicationRecord
  has_many :player_events, dependent: :destroy
  has_many :attendees, class_name: 'Player', inverse_of: 'attended_events', through: :player_events,
  foreign_key: :event_id

  def self.search(search)
    where('date LIKE ?', "%#{search}")
  end
end