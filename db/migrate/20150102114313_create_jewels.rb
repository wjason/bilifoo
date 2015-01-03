class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :name
      t.text :content
      t.string :cover
      t.string :top_cover
      t.integer :sort_id
      t.timestamps null: false
    end
  end
end
