class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :phone_number
      t.string :line1
      t.string :line2
      t.string :city
      t.string :country_code
      t.string :postcode

      t.timestamps
    end
  end
end
