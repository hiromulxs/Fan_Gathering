class CreateAfterglowComments < ActiveRecord::Migration[6.1]
  def change
    create_table :afterglow_comments do |t|
      t.integer :user_id
      t.integer :afterglow_id
      t.string :comment
      t.timestamps
    end
  end
end
