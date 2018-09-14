class CreateFloors < ActiveRecord::Migration[5.2]
  def change
    create_table :floors do |t|
      t.string :name
      t.float :quantity
      t.float :price
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end
