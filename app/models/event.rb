class Event < ApplicationRecord
  has_many :player_events, dependent: :destroy
  has_many :attendees, class_name: 'Player', inverse_of: 'attended_events', through: :player_events,
  foreign_key: :event_id
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :course_name, presence: true, length: { minimum: 3 }
  validates :date, presence: true, length: { minimum: 3 }

  def self.search(search)
    where('date LIKE ?', "%#{search}")
  end
end