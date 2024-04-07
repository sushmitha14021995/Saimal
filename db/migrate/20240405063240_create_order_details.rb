class CreateOrderDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :order_details do |t|
      t.string :order_detail_id
      t.string :user_id
      t.string :total
      t.string :payment_id

      t.timestamps
    end
  end
end
