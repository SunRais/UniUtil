class NotificationsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :authenticate_user!

	def index
		@notifications = Notification.where(recipient: current_user).unread
	end

	def my_notifications
		@notifications = Notification.where(recipient: current_user)
	end

	def mark_as_read
		@notifications = Notification.where(recipient: current_user).unread
		@notifications.update_all(read_at: Time.zone.now)
		render json: {success: true}
	end
end