class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find([:id])
  end

  def full_name
    @user = User.find[:user_id]
    full_name = "#{user.first_name.capitalize} #{user.last_name.capitalize}"
    return full_name
  end
end
