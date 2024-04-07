class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.string :order_item_id
      t.string :order_id
      t.string :product_id

      t.timestamps
    end
  end
end
