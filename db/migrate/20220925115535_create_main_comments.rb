class CreateMainComments < ActiveRecord::Migration[6.1]
  def change
    create_table :main_comments do |t|
      t.integer :user_id
      t.integer :main_post_id
      t.string :comment
      t.timestamps
    end
  end
end
