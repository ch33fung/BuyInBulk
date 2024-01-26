class CreateCartLines < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_lines do |t|
      t.references :variant, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
