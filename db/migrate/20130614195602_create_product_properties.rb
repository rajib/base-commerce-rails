class CreateProductProperties < ActiveRecord::Migration
  def change
    create_table :product_properties do |t|
      t.string :title
      t.string :value
      t.integer :product_id

      t.timestamps
    end
  end
end
