class Admin::SitesController < Admin::ApplicationController

  before_action :set_site, only: [:show, :edit, :update, :destroy]

  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def edit
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      redirect_to action: :index, notice: 'site was successfully created.'
    else
      render :new
    end
  end

  def update
    if @site.update(site_params)
      redirect_to action: :index, notice: 'site was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @site.destroy
    redirect_to action: :index, notice: 'site was successfully destroyed.'
  end

  private

  def set_site
    @site = Site.find(params[:id])
  end

  def site_params
    params.require(:site).permit(:name, :slug, :map_image, :map_url, :header,
                                 :default_translation_id, :keywords)
  end
end
