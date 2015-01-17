class AddNumberToJewels < ActiveRecord::Migration
  def change
    add_column :jewels, :number, :string
  end
end
