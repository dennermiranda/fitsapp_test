class MessagesController < ApplicationController
	def show
		@message = Message.find(params[:id])
	end

	def new
		@message = Message.new
		@users = User.all.compact
		@users.delete(current_user)
		
	end

	def index
		@sent_messages = current_user.sent_messages
		@received_messages = current_user.received_messages
	end

	def create
		@message = Message.new(user_params)
		if @message.save
			flash[:success] = "Sent!"
      		redirect_to @message
      	else
      		render 'new'
      	end
	end

	private

	    def user_params
	      params.require(:message).permit(:title, :content, :receiver_id, :sender_id)
	    end
end
