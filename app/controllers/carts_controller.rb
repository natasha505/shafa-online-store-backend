class CartsController < ApplicationController

  def index
    @carts = Cart.all 
    render :json => @carts
  end 

  def show
    @cart = Cart.find(params[:id])
  end 

  def create
    @cart = Cart.create(cart_params)
    render :json => @cart 
  end 

  def update
    @cart = Cart.find(params[:id])
    @cart.update(cart_params) #complete: --> true
    render :json => @cart
  end 


  private

  def cart_params
    params.require(:cart).permit(:total, :user_id, :item_id, :complete)
  end 

end
