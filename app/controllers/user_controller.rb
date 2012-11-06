class UserController < ApplicationController
  def new
    if request.post?
      @user = User.new(params[:user])
      if @user.valid?
        @user.save
        $user_id = @user.id
        redirect_to '/questions'
      end
    end
  end
end
