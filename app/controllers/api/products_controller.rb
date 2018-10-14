class Api::ProductsController < ApplicationController
  def everything
    render "furniture.json.jbuilder"
  end
end 
