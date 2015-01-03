class CreateJewelsTags < ActiveRecord::Migration
  def change
    create_table :jewels_tags do |t|
      t.integer :jewel_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
