json.array! @notifications do |notification|
	json.id notification.id
	#json.recipient notification.recipient
	json.actor notification.actor.name
	json.action notification.action
	json.notifiable do 
		json.type "#{notification.notifiable.class.to_s.underscore.humanize.downcase}"
	end
	if notification.action == "wrote a "
		json.url discussion_path(notification.notifiable.discussion, anchor: dom_id(notification.notifiable))
	else 
		json.url subject_path(notification.notifiable.subject, anchor: dom_id(notification.notifiable))
	end
end