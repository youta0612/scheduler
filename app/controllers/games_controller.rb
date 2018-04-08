class GamesController < ApplicationController

    def new
        # @game = Game.new
        # @team_id = session[:team_id]
        # render plain: @team_id
    end
    
    def index
        @team = current_team()
        @games = Game.where(team_id: @team.id)
    end

    def show
        @game = Game.find_by(id: params[:id])
    end

    def create
        # params[:team_id] = session[:team_id]
        # @game = Game.new(game_params)
        # @game.save
        # redirect_to :controller => 'games', :action => 'index', :team_id => session[:team_id]
    end

    private
        def game_params
            params.require(:game).permit(:team_id, :date, :place, :opponent)
        end
    
    private
        def flag_to_mark(member)
            flag = member.participant.participation_flag
            case
            when flag then mark = '○'
            when !flag then mark = '×'
            end

            return mark
        end
    # helper_method :flag_to_mark
end
