class Game < ActiveRecord::Base
	def create
		@game = Game.new(game_params)
	 
		@game.save
		redirect_to @game
	end

	private
		def game_params
			params.require(:game).permit(:name, :game_info, :platform)
		end
end
