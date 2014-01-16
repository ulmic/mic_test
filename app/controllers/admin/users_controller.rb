class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.all.reverse
  end
end
