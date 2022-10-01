class Community < ApplicationRecord

  belongs_to :user
  has_many :community_favorites
  has_many :main_posts
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  has_many :events
  has_many :calenders
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

  # def save_tags(tags)
  #   tag_list = tags.split(/[[:blank:]]+/)
  #   current_tags = self.tags.pluck(:name)
  #   old_tags = current_tags - tag_list
  #   new_tags = tag_list - current_tags

  #   p current_tags

  #   old_tags.each do |old|
  #     self.tags.delete Tag.find_by(name: old)
  #   end

  #   new_tags.each do |new|
  #     new_post_tag = Tag.find_or_create_by(name: new)
  #     self.tags << new_post_tag
  #   end
  # end

end
