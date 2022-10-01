class Event < ApplicationRecord

  belongs_to :user
  belongs_to :community
  has_many :event_comments

end
