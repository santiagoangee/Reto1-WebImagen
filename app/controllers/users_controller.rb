class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"

  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sing_in @user
      flash[:success] = "Welcome to the WebImagen!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
