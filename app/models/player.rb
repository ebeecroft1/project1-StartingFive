class Player < ApplicationRecord
    belongs_to :team, :optional => true
    belongs_to :nba_team, :optional => true
end
