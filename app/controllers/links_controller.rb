class LinksController < ApplicationController

    def show
        link = Link.find_by(lookup_code: params[:lookup_code])
        redirect_to link.original_url
    end
    
    def create
        shortener = Shortener.new(link_params[:original_url])
        @link = shortener.generate_short_link
         @url_count = Link.count
        
        if @link.persisted?
            respond_to :js 
        else
            render 'err.js.erb'
        end
    end

    def show_data
        @url_count = Link.count
    end

    private
    def link_params
        params.require(:link).permit(:original_url)
    end
end