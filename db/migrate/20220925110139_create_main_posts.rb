class CreateMainPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :main_posts do |t|
      t.integer :user_id
      t.string :main_text
      t.timestamps
    end
  end
end
