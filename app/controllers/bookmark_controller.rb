class BookmarkController < ApplicationController
  include AuthenticatedSystem
  before_filter :login_required

  def add
    @myuser = current_user
    @page = Page.find_by_uri(params[:uri]) || Page.new(:uri => params[:uri])
    @page.title = params[:title]
    @bookmark = Bookmark.new
    @bookmark.user = @myuser
    @bookmark.page = @page
    @bookmark.comment = params[:comment]
    if request.post? && (@bookmark.save! rescue false)
      redirect_to :controller => "user", :action => "show", :id => @myuser
    else
      render(:action => "add")
    end
  end
end
