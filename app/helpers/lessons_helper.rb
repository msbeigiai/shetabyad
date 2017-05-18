module LessonsHelper
	def display_likes(lesson)
		votes = lesson.votes_for.up.by_type(User)
		return list_likers(votes) if votes.size <= 3
		count_likers(votes)
	end
	
	def liked_lesson(lesson)
		return 'fa fa-heart' if current_user.voted_for? lesson
		'fa fa-heart-o'
	end
	
	def last_models(number)
		if number <= Lesson.count
			Lesson.last(number)	
		end
	end
	
	private
	
	def list_likers(votes)
		emails = []
		unless votes.blank?
			votes.voters.each do |voter|
				emails.push(voter.email, class: 'some')
			end
			emails.to_sentence.html_safe + like_plural(votes)
	end
end

	def count_likers(votes)
		vote_count = votes.size
		vote_count.to_s + ' likes'
	end
	
	def like_plural(votes)
		return ' like this' if votes.count > 1
		' likes this'
	end
end
	
