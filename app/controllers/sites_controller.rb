class SitesController < ApplicationController
    def index
      @sites = Site.all
    end

    def new
      @site = Site.new
    end

    def show
      if params[:id] != 'sites'
         @site = Site.find(params[:id])
         redirect_to @site.name
      else
        render :index
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
      allow = [:name]
      params.require(:site).permit(allow)
    end
end
