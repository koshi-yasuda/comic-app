class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "ユーザー登録が完了しました。"
      friendly_forwarding
    else
      render "new"
    end

  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  #Strong Parametersを適用するためのメソッド
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
