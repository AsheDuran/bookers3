class UsersController < ApplicationController
  def edit
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end
end
