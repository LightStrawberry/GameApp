class GameController < ApplicationController
	def index
		@games = Game.all
	end

	def new
		@game = Game.new
	end

	def show
	    @game = Game.find(params[:id])
	    @comments = @game.comments
	end

	def edit
		@game = Game.find(params[:id])
	end

	def create
		@games = Game.new(games_params)
		@games.save
		redirect_to @games
	end

	def update
	    @game = Game.find(params[:id])
	 
	    if @game.update(games_params)
	      redirect_to @game
	    else
	      render 'edit'
	    end
	end

	def destroy
		@game =  Game.find(params[:id])
		@game.destroy

		redirect_to game_index_path
	end

	private
		def games_params
			params.require(:game).permit(:name, :game_info, :platform, :image)
		end
end