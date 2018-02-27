class Participant < ApplicationRecord
    belongs_to :member
    belongs_to :game
    belongs_to :makegames
end
