class ItemsController < ApplicationController

  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      if user
        items = user.items
      else
        render json: {errors: "not found"}, status: :not_found
      end
    else
      items = Item.all
    end
    render json: items, include: :user
  end

  def create

  end

end
