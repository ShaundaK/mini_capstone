class RemoveImagesFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_1, :string
    remove_column :images, :image_2, :string
    remove_column :images, :image_3, :string
  end
end
