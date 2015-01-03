class CreateJewelsStatuses < ActiveRecord::Migration
  def change
    create_table :jewels_statuses do |t|
      t.integer :jewel_id
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
