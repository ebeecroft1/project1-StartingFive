class Team < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :players
end
