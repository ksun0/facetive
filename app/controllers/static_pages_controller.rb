class StaticPagesController < ApplicationController
  layout false, only: [:welcome]
  before_action :logged_out, only: [:home]

  def welcome
  end

  def home
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def contact
  end

  private
  def logged_out
    if !logged_in?
      redirect_to welcome_path
    end
  end
end
