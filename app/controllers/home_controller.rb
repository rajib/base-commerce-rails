class HomeController < ApplicationController
  def index
    @users = User.all
    @new_three_product = Product.find(:all, :limit => 3)
  end
end
