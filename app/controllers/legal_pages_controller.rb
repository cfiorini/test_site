class LegalPagesController < ApplicationController

  before_action :set_site
  # before_action :set_translation
  before_action :set_page

  def show
  end

  private

  def set_site
    @site = Site.find params[:site_id]
  end

  # def set_translation
  #   @site.translations.find_by(id: params[:l])  ||
  #     @site.default_translation                 ||
  #     @site.translations.first
  # end

  def set_page
    @page = @site.local_legal_pages.find params[:id]
    @translation = @page.translation
  end

end