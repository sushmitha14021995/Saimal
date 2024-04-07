class CreatePaymentDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :payment_details do |t|
      t.string :payment_details_id
      t.string :order_id
      t.string :amount
      t.string :provider
      t.string :status

      t.timestamps
    end
  end
end
