class CommentsController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    @comment = @room.comments.create(comment_params)
    redirect_to room_path(@room)
  end

  def destroy
    @room = Room.find(params[:room_id])
    @comment = @room.comments.find(params[:id])
    @comment.destroy
    redirect_to room_path(@room)
  end
    private
      def comment_params
        params.require(:comment).permit(:body, :name, :user)
      end
  # before_action :authenticate_user!
  # before_action :set_room
  # before_action :set_comment, only: :destroy

  # def create
  #   @comment = @room.comments.new(comment_params)
  #   @comment.user = current_user
  #   @comment.save
  #   respond_to do | format |
  #     format.js
  #   end
  # end

  # def destroy
  #   @comment.destroy
  #   respond_to do | format |
  #     format.js
  #   end
  # end

  # private

  # def set_room
  #   @room = Room.find(params[:room_id])
  # end

  # def set_comment
  #   @comment = @room.comments.find(params[:id])
  # end

  # def comment_params
  #   params.require(:comment).permit(:body)
  # end

end