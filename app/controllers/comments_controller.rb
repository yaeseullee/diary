class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@between = Between.find(params[:between_id])
		@comment = @between.comments.new(comment_params)
		@comment.commenter = current_user.email
		@comment.save
		redirect_to between_path(@between)
	end

	private
		def comment_params
			params.require(:comment).permit(:body)
		end
end
