class Team < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :players
    validates :players, length: { is: 5 } # Comment out this line when running rails db:seed
end
