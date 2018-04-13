class GamesController < ApplicationController

    def new
        @team = current_team()
    end
    
    def index
        @team = current_team()
        @games = Game.where(team_id: @team.id)
    end

    def show
        @game = Game.find_by(id: params[:id])
        # @game = Game.includes(:members, :participants).find_by(id: params[:id])
    end

    def create
        @team = current_team()
        @game = @team.games.create(
            date: params[:date],
            place: params[:place],
            opponent: params[:opponent],
            participation_flag: false
        )
        @game.save
        redirect_to('/games')
    end

    def edit
    end

    private
        def game_params
            params.require(:game).permit(:team_id, :date, :place, :opponent)
        end
    
    private
        def flag_to_mark(flag)
            case
            when flag then mark = '○'
            when !flag then mark = '×'
            end

            return mark
        end
    helper_method :flag_to_mark
end
