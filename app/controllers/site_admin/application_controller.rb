module SiteAdmin
  class ApplicationController < ::ApplicationController
    before_action :require_login
    before_action :set_current_site

    layout 'backend'
    attr_reader :current_site

    private

    def set_current_site
      @current_site = current_user.site
    end

  end
end
