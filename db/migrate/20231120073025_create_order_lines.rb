class CreateOrderLines < ActiveRecord::Migration[7.1]
  def change
    create_table :order_lines do |t|
      t.string :description
      t.integer :price_cents
      t.integer :quantity
      t.integer :total_cents
      t.references :variant, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
