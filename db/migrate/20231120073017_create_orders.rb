class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.bigint :billing_address_id
      t.bigint :shipping_address_id
      t.references :user, null: false, foreign_key: true
      t.integer :grand_total_cents

      t.timestamps
    end
  end
end
