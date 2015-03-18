class Answer < ActiveRecord::Base
	belongs_to :topic
	belongs_to :user
	validates :content, presence: true
	has_many :likes, as: :likable
end
