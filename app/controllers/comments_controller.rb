class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    post = Post.find(params[:post_id])
    comment.post = post
    comment.save

    
    # post = Post.find(params[:post_id])
    # post.comments.build(comment_params) #Crea un comentario para POST
    # post.save


    redirect_to post



  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content)
    end

end
