class GrocerylistController < ActionController::Base
  def show
    @grocerylist = Grocerylist.find(params[:gid])
  end

  def new
    @grocerylist = Grocerylist.new
  end
end