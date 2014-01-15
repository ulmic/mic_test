class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_card_num params[:user][:card_num]
    if @user && authenticate_user?(@user, params[:user][:fio])
      user_sign_in @user
      redirect_to new_answer_path(Question.first), flash: :success
    else
      @user = User.new params[:user]
      flash[:notice] = t('.wrong_login')
      render action: :new
    end
  end

  def destroy
    user_sign_out
    redirect_to :root
  end
end
