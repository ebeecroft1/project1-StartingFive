class TeamsController < ApplicationController
    before_action :check_for_login
    
    def index
        @teams = Team.all
    end

    def show
        @team = Team.find params[:id]
    end

    def new
        @team = Team.new
        @players = Player.all
    end

    def create
        team = Team.create team_params 
        @current_user.teams << team
        redirect_to teams_path
    end

    def destroy
        team = Team.find params[:id]
        team.destroy
        redirect_to teams_path
    end

    private
    def team_params
        params.require(:team).permit(:name, :player_ids => [])
    end

end