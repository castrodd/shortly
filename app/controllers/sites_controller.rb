class SitesController < ApplicationController
    def index
      @sites = Site.all
    end

    def new
      @site = Site.new
    end

    def show
      @site = Site.find_by id: params[:id]
    end

    def create
      @site = Site.create(site_params)

      if @site.save
        redirect_to site_path
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
