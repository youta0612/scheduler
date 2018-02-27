class TeamsController < ApplicationController
    def index
        @team = Team.new
    end

    def create
        session[:team_id] = params[:team][:id]
        redirect_to :controller => 'games', :action => 'index'
    end

end
