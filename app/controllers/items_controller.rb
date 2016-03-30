class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = @user.items.build(item_params)

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      redirect_to root_path
    end
  end

  private
    def item_params
      params.require(:item).permit(:name)
    end
end
