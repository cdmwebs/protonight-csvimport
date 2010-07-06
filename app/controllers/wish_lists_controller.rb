class WishListsController < ApplicationController

  def index
    @wish_lists = WishList.all(:include => :wishes)

    respond_to do |format|
      format.html
    end
  end

  def show
    @wish_list = WishList.find(params[:id], :include => :wishes)

    respond_to do |format|
      format.html
    end
  end

  def new
    @wish_list = WishList.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @wish_list = WishList.new(params[:wish_list])

    respond_to do |format|
      if @wish_list.save
        flash[:success] = "'#{@wish_list.title}' created!"
        format.html { redirect_to new_wish_list_path }
      else
        flash[:error] = 'Uh oh! There was a problem creating the wish list.'
        format.html { render :new }
      end
    end
  end
end
