class GameController < ApplicationController
	def index
		@games = Game.all
	end

	def new
		@game = Game.new
	end

	def show
		@game = Game.find(params[:id])
	end

	def create
		@games = Game.new(games_params)
		@games.save
		redirect_to @games
	end

	private
		def games_params
			params.require(:game).permit(:name, :game_info, :platform)
		end
end
