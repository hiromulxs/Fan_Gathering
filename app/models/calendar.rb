class Calendar < ApplicationRecord
  belongs_to :community
  has_many :calendar_users
end
