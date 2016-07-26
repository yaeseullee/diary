class StoryController < ApplicationController
	def new
	end

	def create
		@story = Story.new(story_params)
		
		@story.save
		redirect_to @story
	end

	def show
		@story = Story.find(params[:id])
	end

	def index
		@story = Story.all
	end

	private 
		def story_params
			params.require(:story).permit(:title, :text, :photo)
		end
end
