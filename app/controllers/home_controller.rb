class HomeController < ApplicationController

  def index
    @news = NewsItem.order("date desc").limit(4)
  end

end
