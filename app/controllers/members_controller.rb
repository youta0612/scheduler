class MembersController < ApplicationController
    def index
        @team = current_team
        @members = Member.where(team_id: @team.id)
    end

    def new
        @team = current_team
    end

    def create
        @team = current_team
        @member = @team.members.build(
            name:           params[:name], 
            skill_level:    params[:sl]
            )
        # games = Game.where(team_id: @team.id)
        # games.each do |game|
        #     part = @member.participants.build(
        #         game_id: game.id,
        #         participation_flag: false
        #     )
        # end
        @member.save
        redirect_to(members_path)
    end

end
