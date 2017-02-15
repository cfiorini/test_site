class SiteAdmin::LocalNewsItemsController < SiteAdmin::ApplicationController
  before_action :set_local_news_item, only: [:edit, :update, :destroy]

  def index
    # @local_news_items = current_site.local_news_items
    #                     .order("date desc")
    @translations = current_site.translations
  end

  def new
    @translation = current_site.translations.find params[:translation_id]
    @local_news_item = @translation.local_news_items.new
  end

  def edit
  end

  def create
    @translation = current_site.translations
                               .find params[:local_news_item]['translation_id']
    @local_news_item = @translation.local_news_items.new(local_news_item_params)
    if @local_news_item.save
      redirect_to action: :index, notice: 'News item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @local_news_item.update(local_news_item_params)
      redirect_to action: :index,
                  notice: 'Local news item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @local_news_item.destroy
    redirect_to action: :index, notice: 'News item was successfully destroyed.'
  end

  private

  def set_local_news_item
    @local_news_item = current_site.local_news_items.find(params[:id])
  end

  def local_news_item_params
    params.require(:local_news_item).permit(:title, :date, :body, :image)
  end
end
