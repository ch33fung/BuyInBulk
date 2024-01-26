class CreateVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :variants do |t|
      t.references :product, null: false, foreign_key: true
      t.string :sku
      t.integer :price_cents

      t.timestamps
    end
  end
end
