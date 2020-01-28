class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :menu_spot
      t.string :wine
      t.integer :quantity_serving
      t.integer :time_cooking
      t.integer :time_prep
      t.integer :time_plating
      t.integer :time_marinade
      t.integer :price_waiting
      t.integer :price_serving
      t.integer :price_work
      t.string :TOTAL_time
      t.integer :TOTAL_price

      t.timestamps
    end
  end
end
