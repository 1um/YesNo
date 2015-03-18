class Topic < ActiveRecord::Base
	belongs_to :user
	has_many :answers
	validates :content, presence: true
	has_many :likes, as: :likable

	def user
		super || User.new(name:'DELETED USER')
	end
end
