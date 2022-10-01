class MainPost < ApplicationRecord

  belongs_to :user
  belongs_to :community
  has_many :main_comments

end
