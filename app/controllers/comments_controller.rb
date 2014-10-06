class CommentsController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = Comment.new(comment_params)
    @comment.movie = @movie
    @comment.user = current_user
    @comment.save
    redirect_to movie_path(@movie)
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :movie_id, :body)
    end
end
