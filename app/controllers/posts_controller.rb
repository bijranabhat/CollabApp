class PostsController < ApplicationController
    
    def show
        @post = Post.find(params[:id])
        if user_signed_in?
            @message_has_been_sent = conversation_exist? 
        end
    end
    
    private

      def conversation_exist?
        Private::Conversation.between_users(current_user.id, @post.user.id).present?
      end

end
