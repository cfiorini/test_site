class SiteAdmin::TranslationsController < SiteAdmin::ApplicationController
  before_action :set_translation, only: [:edit, :update]

  def index
    @translations = current_site.translations.order("id desc")
  end

  def edit
  end

  def update
    if @translation.update(translation_params)
      redirect_to action: :index,
                  notice: 'translation was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_translation
    @translation = current_site.translations.find(params[:id])
  end

  def translation_params
    params.require(:translation)
          .permit(:intro, :services, :products,
                  :lets_talk, :find_us, :support,
                  :intro_label, :services_label, :products_label,
                  :lets_talk_label, :find_us_label, :support_label,
                  :contacts_label, :services_link_label, :products_link_label,
                  :news_label, :read_more)
  end

end
