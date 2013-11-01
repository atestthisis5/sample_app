class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new params[:user]
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      puts 'aaaa'
      flash[:success] = "Settings saved!"
      redirect_to @user
    else
      puts 'vvvv'
      render 'edit'
    end
  end

end
