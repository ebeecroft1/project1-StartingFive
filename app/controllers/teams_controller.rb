class TeamsController < ApplicationController
    before_action :check_for_login
    
    def index
        @teams = Team.all
    end

    def new
        @team = Team.new
    end

    def create
        team = Team.create team_params
        @current_user.teams << team
        redirect_to root_path # CHANGE TO REDIRECT TO TEAM
    end

    private
    def team_params
        params.require(:team).permit(:name)
    end

end
