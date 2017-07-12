class SitesController < ApplicationController
    def index
    end

    def new
      @site = Site.new
    end

    def show
      @site = Site.last
    end

    def create
      @site = Site.create(site_params)

      if @site.save
        redirect_to '/sites/:id'
      else
        redirect_to new_site_path
      end
    end

    private

    def site_params
      allow = [:name]
      params.require(:site).permit(allow)
    end
end
