class SitesController < ApplicationController
    def index
      @site = Site.last
    end

    def new
      @site = Site.new
    end

    def show
    end

    def create
      @site = Site.create(site_params)

      if @site.save
        redirect_to sites_path
      else
        redirect_to new_site_path
      end
    end

    private

    def site_params
      allow = [:name, :id]
      params.require(:site).permit(allow)
    end
end
