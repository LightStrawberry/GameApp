class AdminController < ApplicationController

	def game
	    @games = Game.all
	end

	def user
		@users = User.all
	end

end
