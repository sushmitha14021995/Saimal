class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :product_name
      t.string :desc
      t.string :sku
      t.string :category_id
      t.string :inventory_id
      t.string :price
      t.string :discount_id

      t.timestamps
    end
  end
end
