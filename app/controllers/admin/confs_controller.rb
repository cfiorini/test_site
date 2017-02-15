module Admin
  class ConfsController < Admin::ApplicationController

    def show
      @conf = Conf.load
    end

    def update
      @conf = Conf.load
      if @conf.update(conf_params)
        redirect_to admin_confs_path, notice: 'Configuration saved successfuly.'
      else
        redirect_to admin_confs_path, alert: 'Error when save.'
      end
    end

    private

    def conf_params
      params.require(:conf).permit(:keywords)
    end

  end
end
