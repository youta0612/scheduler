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
        @member = Member.new(
            name:           params[:name], 
            skill_level:    params[:sl],
            team_id:        @team.id
            )
        @member.save
        redirect_to(members_path)
    end

end
