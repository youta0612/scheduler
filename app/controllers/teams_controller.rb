class TeamsController < ApplicationController
    def index

    end

    def create
        
    end

    def login
        session[:team_id] = params[:team_id]
        redirect_to('/games')
    end

end
