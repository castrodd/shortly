class SitesController < ApplicationController
    def index
    end

    def new
      @site = Site.new
    end

    def show
      @site = Site.find_by(params[:id])
      redirect_to @site
    end

    def create
      @site = Site.create(site_params)

      if @site.save
        redirect_to site_path(@site.id)
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
