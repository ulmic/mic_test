class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      user_sign_in @user
      redirect_to new_answer_path(Question.first), flash: :success
    else
      render action: :new, flash: :error
    end
  end

  def success
  end
end
