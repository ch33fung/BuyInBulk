class CreateNews < ActiveRecord::Migration[7.1]
  def change
    create_table :news do |t|
      t.string :title
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
