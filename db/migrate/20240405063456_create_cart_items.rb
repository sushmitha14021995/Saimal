class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.string :product_id
      t.string :session_id
      t.string :quantity

      t.timestamps
    end
  end
end
