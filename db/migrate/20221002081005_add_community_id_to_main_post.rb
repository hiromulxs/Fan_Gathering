class AddCommunityIdToMainPost < ActiveRecord::Migration[6.1]
  def change
    add_column :main_posts, :community_id, :integer
  end
end
