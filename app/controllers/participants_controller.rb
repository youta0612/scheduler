class ParticipantsController < ApplicationController

    def new
    end

    def index
        @participant = Participant.find_by(id: params[:id])
    end
end
