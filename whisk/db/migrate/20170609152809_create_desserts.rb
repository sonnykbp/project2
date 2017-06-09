class CreateDesserts < ActiveRecord::Migration[5.1]
  def change
    create_table :desserts do |t|
      t.string :type
      t.string :dessert_image

      t.timestamps
    end
  end
end
