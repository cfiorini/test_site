class Admin::NewsItemsController < Admin::ApplicationController

  before_action :set_news_item, only: [:show, :edit, :update, :destroy]

  def index
    @news_items = NewsItem.order("date DESC").all
  end

  def new
    @news_item = NewsItem.new
  end

  def edit
  end

  def create
    @news_item = NewsItem.new(news_item_params)
    if @news_item.save
      redirect_to admin_news_items_path,
                  notice: 'News item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @news_item.update(news_item_params)
      redirect_to action: :index, notice: 'News item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @news_item = NewsItem.find(params[:id])
    @news_item.destroy
    redirect_to action: :index, notice: 'News item was successfully destroyed.'
  end

  private

  def set_news_item
    @news_item = NewsItem.find(params[:id])
  end

  def news_item_params
    params.require(:news_item).permit(:title, :date, :body, :image)
  end
end
