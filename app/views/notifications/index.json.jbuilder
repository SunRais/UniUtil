json.array! @notifications do |notification|
	json.id notification.id
	#json.recipient notification.recipient
	json.actor notification.actor.name
	json.action notification.action
	json.notifiable do 
		json.type "a #{notification.notifiable.class.to_s.underscore.humanize.downcase}"
	end
	json.url discussion_path(notification.notifiable.discussion_type, anchor: dom_id(notification.notifiable))
end