class ApplicationController < ActionController::Base
    include ApplicationHelper
    before_action :setup_kosan

    def setup_kosan
        return if session[:id].nil?
        @current_kosan = Kosan.find(session[:id])
    end
end
