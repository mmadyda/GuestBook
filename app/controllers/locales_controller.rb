class LocalesController < ApplicationController
    def save_locale 
        session[:locale] = params[:locale]
        redirect_back fallback_location: root_path
        #redirect_to :back
    end
end
