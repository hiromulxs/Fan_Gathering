class Afterglow < ApplicationRecord

  belongs_to :user
  belongs_to :community
  has_many :afterglow_comments

end
