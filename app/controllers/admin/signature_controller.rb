class Admin::SignatureController < Admin::ApplicationController

  def index
  end

  def update
    path = params[:banner][0].tempfile.path
    system "cp #{path} #{Rails.root}/public/img/Firma/banner_firma.jpg" if path
    redirect_to action: :index
  end

end
