class StaticPagesController < ApplicationController
  layout false, only: [:welcome]
  before_action :first_time_visiting, only: [:home]

  def welcome
  end

  def home
      @posts = Post.all.paginate(page: params[:page])
  end

  def feed
    if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def contact
  end

  private
  def first_time_visiting
    if cookies[:first_time].nil?
      cookies.permanent[:first_time] = 1
      redirect_to welcome_path unless current_user
    end
  end
end
