class CreateAfterglows < ActiveRecord::Migration[6.1]
  def change
    create_table :afterglows do |t|
      t.integer :user_id
      t.integer :community_id
      t.string :afterglow_text, null: false
      t.timestamps
    end
  end
end
