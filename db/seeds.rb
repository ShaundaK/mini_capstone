Product.create!([
  {name: "chair", price: "30.0", image_url: "", description: "a beautiful wooden chair", in_stock?: nil},
  {name: "super couch", price: "200.0", image_url: "", description: "a gigantic, comfy couch", in_stock?: nil},
  {name: "couch", price: "100.0", image_url: "", description: "a comfy red couch", in_stock?: nil}
])


products = Product.order(:id)

products.each do |product|
p product.image_url
image = Image.new(url: product.image_url, product_id: product.id)
image.save
end