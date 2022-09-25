class CreateCommunityFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :community_favorites do |t|
      t.integer :user_id
      t.integer :community_id
      t.timestamps
    end
  end
end
