class Community < ApplicationRecord

  belongs_to :user
  has_many :community_favorites
  has_many :main_posts, dependent: :destroy
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  has_many :events
  has_many :calendars
  has_many :afterglows


  def save_tag(sent_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - sent_tags
    new_tags = sent_tags - current_tags

    old_tags.each do |old|
      self.tagsdelete Tag.find_by(tag_name: old)
    end

    new_tags.each do |new|
      new_community_tag = Tag.find_or_create_by(tag_name: new)
      self.tags << new_community_tag
    end
  end

end
