class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :price_U
      t.string :conditionnng
      t.integer :quantity
      t.integer :quantity_unit
      t.string :row_shop
      t.references :season, null: false, foreign_key: true
      t.integer :TOTAL_price

      t.timestamps
    end
  end
end
