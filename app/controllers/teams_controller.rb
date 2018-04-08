class TeamsController < ApplicationController
    def index

    end

    def create
        @team = Team.new(
            name: params[:name]
        )
        @team.save
        session[:team_id] = @team.id
        redirect_to('/games')
    end

    def login
        session[:team_id] = params[:team_id]
        redirect_to('/games')
    end

    def new

    end

end
