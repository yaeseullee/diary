class StoryController < ApplicationController
	def new
		
	end
	def create
		render plain: params[:story].inspect
	end
end
