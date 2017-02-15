class Admin::TranslationsController < Admin::ApplicationController

  # before_action :set_translation, only: [:show, :destroy]

  def new
    @translation = Translation.new(site_id: params[:site_id])
  end

  def create
    @translation = Translation.new(translation_params)
    if @translation.save
      redirect_to admin_sites_path,
                  notice: 'translation was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @translation = Translation.find(params[:id])
    @translation.destroy
    redirect_to admin_sites_path
  end

  private

  def translation_params
    params.require(:translation).permit(:site_id, :language_id)
  end

end
