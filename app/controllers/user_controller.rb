class UserController < ApplicationController
  include AuthenticatedSystem
  before_filter :login_required

  def show
    @myuser = current_user
    @user = params[:id].nil? ? @myuser : User.find(params[:id])
  end
end
