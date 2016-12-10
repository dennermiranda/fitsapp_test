class MessagesController < ApplicationController
	def show
	end

	def new
		@message = Message.new
		@users = User.all
	end

	def index
		@sent_messages = current_user.sent_messages
		@received_messages = current_user.received_messages
	end

	def create
	end
end
