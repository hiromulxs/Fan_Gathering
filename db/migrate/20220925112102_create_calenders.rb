class CreateCalenders < ActiveRecord::Migration[6.1]
  def change
    create_table :calenders do |t|
      t.integer :community_id
      t.string :prefectures, null: false
      t.string :venue, null: false
      t.time :product_sales, null: false
      t.time :opening_time, null: false
      t.time :start_time, null: false
      t.integer :drink_fee
      t.string :venue_information
      t.text :postscript
      t.timestamps
    end
  end
end
