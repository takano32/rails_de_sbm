class PageController < ApplicationController
  include AuthenticatedSystem
  before_filter :login_required

  def show
    @myuser = current_user
    @page = Page.find_by_uri(params[:uri])
  end
end
