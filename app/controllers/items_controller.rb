class ItemsController < ApplicationController

  def index
    @items = Item.all 
    render :json => @items
  end

  def show
    @item = Item.find(params[:id])
    render :json => @items
  end 

  def getAvailableItems
    @items = Item.where(status: "available")
    render :json => @items
  end 


#refector in items controller to get user (id)
  def getPendingItemInfo
    @output = []
    @items = Item.where(status: "pending")
    for item in @items do
      for cart in item.carts do
        @user = User.find(cart.user_id)
        @output << {user_email: @user.email, item: item }
      end
    end
    render :json => @output
  end 

  def create
    @item = Item.create(item_params)
    render :json => @item
  end 

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    render :json => @item
  end 

  private 

  def item_params
    params.require(:item).permit(:name, :img, :size, :brand, :price, :color, :condition, :details, :status)
  end 

end
