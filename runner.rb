require 'unirest'
require 'awesome_print'

# response = Unirest.get("localhost:3000/api/products")
response = Unirest.get("localhost:3000/api/products/2")

ap response.body