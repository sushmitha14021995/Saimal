class CreateUserPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :user_payments do |t|
      t.string :user_payment_id
      t.string :user_id
      t.string :payment_type
      t.string :provider
      t.string :account_no
      t.string :expiry

      t.timestamps
    end
  end
end
