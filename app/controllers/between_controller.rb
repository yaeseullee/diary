class BetweenController < ApplicationController

	def new
	end

	def create
		@between = Between.new(between_params)
		
		@between.save
		redirect_to @between
	end

	def show
		@between = Between.find(params[:id])
	end

private
	def between_params
		params.require(:between).permit(:title, :text, :photo)
	end

end
