class SiteAdmin::LocalLegalPagesController < SiteAdmin::ApplicationController
  before_action :set_local_legal_page, only: [:edit, :update, :destroy]

  def index
    # @local_legal_pages = current_site.local_legal_pages
    #                     .order("date desc")
    @translations = current_site.translations
  end

  def new
    @translation = current_site.translations.find params[:translation_id]
    @local_legal_page = @translation.local_legal_pages.new
  end

  def edit
  end

  def create
    @translation = current_site.translations
                               .find params[:local_legal_page]['translation_id']
    @local_legal_page = @translation.local_legal_pages
                                    .new(local_legal_page_params)
    if @local_legal_page.save
      redirect_to action: :index, notice: 'Legal page was successfully created.'
    else
      render :new
    end
  end

  def update
    if @local_legal_page.update(local_legal_page_params)
      redirect_to action: :index,
                  notice: 'Legal page was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @local_legal_page.destroy
    redirect_to action: :index, notice: 'Legal page was successfully destroyed.'
  end

  private

  def set_local_legal_page
    @local_legal_page = current_site.local_legal_pages.find(params[:id])
  end

  def local_legal_page_params
    params.require(:local_legal_page).permit(:title, :body)
  end
end
