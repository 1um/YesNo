class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :likable, polymorphic: true

	after_create :increase_likes_counter
	after_destroy :decrease_likes_counter

	def increase_likes_counter
		self.likable.like_counter+=1
		self.likable.save
	end

	def decrease_likes_counter
		self.likable.like_counter-=1
		self.likable.save
	end
end
