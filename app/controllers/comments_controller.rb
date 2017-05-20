class CommentsController < ApplicationController
	
	before_action :set_lesson
	
	def index
		@comments = @lesson.comments.order('created_at asc')
		
		respond_to do |format|
			format.html { render layout: !request.xhr? }
		end
	end
	
	def create
		@comment = @lesson.comments.build(params_comment)
		@comment.user_id = current_user.id
		
		if @comment.save
			respond_to do |format|
				format.html { redirect_to root_path }
				format.js {}
			end
		else
			flash[:alert] = "نظر خود را دوباره چک بفرمایید. احتمالا مشکلی پیش آمده."
			render root_path
		end
	end
	
	def destroy
		@comment = @lesson.comments.find(params[:id])
		
		if @comment.user_id == current_user.id
			@comment.destroy
			respond_to do |format|
				format.html { redirect_to root_path }
				format.js {}
			end
		end
	end
	
	private
	
	def set_lesson
		@lesson = Lesson.find(params[:lesson_id])
	end
	
	def params_comment
		params.require(:comment).permit(:content)
	end
end
