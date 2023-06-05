class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price
      t.integer :shipping_cost
      t.integer :status, null: false, default: 0
      t.references :category, foreign_key: true, null: false
      t.references :seller, foreign_key: true, null: false
      t.timestamps
    end
  end
end
