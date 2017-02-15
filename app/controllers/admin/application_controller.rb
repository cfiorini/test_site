module Admin
  class ApplicationController < ::ApplicationController
    before_action :require_admin

    layout 'backend'

    private

    def require_admin
      render text: 'NOT FOUND',
             status: 404 unless current_user && current_user.admin?
    end
  end
end
