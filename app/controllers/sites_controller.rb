class SitesController < ApplicationController
  def show
    @site = Site.find_by(slug: params[:slug]) || Site.find(params[:id])
    @translation = set_translation
    @news = @translation.local_news_items.order("date desc").limit(4)
    @legal_pages = @translation.local_legal_pages
  end

  private

  def set_translation
    @site.translations.where(id: params[:l]).first ||
      @site.default_translation                    ||
      @site.translations.first
  end
end
