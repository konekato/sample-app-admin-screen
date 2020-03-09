class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    if @user.name = "" then
      @user.name = "no name"
    end
    @user.save
    redirect_to '/users'
  end
end
