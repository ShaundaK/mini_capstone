class CorrectImagesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :image_url, :string
    add_column :images, :product_id, :string
  end
end
