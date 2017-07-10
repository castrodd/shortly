class SitesController < ApplicationController
    def index
    end

    def new
      @site = Site.new
    end

    def create
      @site = Site.create(params[:site])

      if @site.save
        redirect_to @site
      else
        redirect_to :action => "new"
      end
    end
end
