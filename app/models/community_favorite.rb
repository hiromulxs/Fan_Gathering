class CommunityFavorite < ApplicationRecord

  belongs_to :user
  belongs_to :community

end
