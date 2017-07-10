class SitesController < ApplicationController
    def index
      @sites = Site.last
    end

    def new
      @site = Site.new
    end

    def show
       redirect_to Site.last.name
    end

    def create
      @site = Site.create(site_params)

      if @site.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    private

    def site_params
      allow = [:name, :id]
      params.require(:site).permit(allow)
    end
end
