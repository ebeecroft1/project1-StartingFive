class Player < ApplicationRecord
    has_and_belongs_to_many :teams, :optional => true
    belongs_to :nba_team, :optional => true
end
