class CartsController < ApplicationController

  def index
    @carts = Cart.all 
    render :json => @carts
  end 

  def show
    @cart = Cart.find(params[:id])
  end 

  def create
    @cart = Cart.find_by(cart_params)
    if !! @cart
      render json: {error: "You already have this item, silly goose"}
    else
      @cart = Cart.create(cart_params)
      render :json => @cart 
    end
  end 

  # Item.find(Cart.find(1).item_id).status
  def update
    @cart = Cart.find(params[:id])  # --> 1
    @item = Item.find(@cart.item_id)   # --> 4
    @item.update(status: "pending")
    @cart.update(cart_params) #complete: --> true
    render :json => @cart
  end 

  def getUserCarts
    @carts = Cart.where(user_id: params[:id], complete: false)
    render :json => @carts
  end 

  private

  def cart_params
    params.require(:cart).permit(:total, :user_id, :item_id, :complete)
  end 

end
