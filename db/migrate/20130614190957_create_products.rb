class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :price
      t.string :code

      t.timestamps
    end
    add_index :products, :code, :unique => true
  end
end
