class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :communities
  has_many :community_favorites
  has_many :main_post
  has_many :afterglows
  has_many :events
  has_many :calendar_users
  has_many :main_comments
  has_many :afterglow_comments
  has_many :event_comments

end
