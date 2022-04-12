class PlayersController < ApplicationController
    def index
        @players = Player.all
    end

    def show
        @player = Player.find params[:id]
    end

    def new
    end

    def create
        player = Player.create player_params
        redirect_to player_path(player.id)
    end

    private
    def player_params
        params.require(:player).permit(:name, :position, :age, :height, :weight, :points, :rebounds, :assists, :blocks, :steals, :college, :image)
    end

end