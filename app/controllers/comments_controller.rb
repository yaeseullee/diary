class CommentsController < ApplicationController
	def create
		@between = Between.find(params[:between_id])
		@comment = @between.comments.create(comment_params)
		redirect_to between_path(@between)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
