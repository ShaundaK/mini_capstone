require 'unirest'
require 'awesome_print'

#index
response = Unirest.get("localhost:3000/api/products")
#show
# response = Unirest.get("localhost:3000/api/products/2")
#create
# response = Unirest.post("localhost:3000/api/products")
#update
# response = Unirest.patch("localhost:3000/api/products/2")
#delete
response = Unirest.delete("localhost:3000/api/products/3")


ap response.body