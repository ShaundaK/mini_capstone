class CreateCategoryProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :category_products do |t|
      t.integer :product_id
      t.integer :category_id
      t.timestamps
    end
  end
end
