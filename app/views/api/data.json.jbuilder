json.newsItems @news_items do |news_item|
	json.id news_item.id_for_app
	json.date news_item.date
	json.title news_item.title
	json.content news_item.content
end

json.aboutContent @about_content do |about_content|
	json.title about_content.title
	json.content about_content.content
end

json.pastEvents @past_events do |event|
	json.year event.year
	json.imageUrl event.image_url
	gallery_urls_array = []
	event.gallery_urls.each do |item|
		gallery_urls_array.push(item.url)
	end
	json.galleryUrls gallery_urls_array
	json.content event.content
end

json.futureEvents @future_events do |event|
	json.year event.year
	json.imageUrl event.image_url
	json.content event.content
	json.eventTimes event.future_event_times do |event_time|
		json.locationName event_time.location_name
		json.startTime event_time.start_time
	end
end

json.videos @videos do |video|
	json.id video.id_for_app
	json.title video.title
	json.author video.author
	json.year video.year
	json.duration video.duration
	json.videoUrl video.video_url
	json.thumbUrl video.image_url
	json.isWinner video.is_winner
	json.isEntrant video.is_entrant
	json.isOther video.is_other
end

json.socialMediaLinks @social_links do |social_link|
	json.title social_link.title
	json.url social_link.url
	json.imageUrl social_link.image_url
end