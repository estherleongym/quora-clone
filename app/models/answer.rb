class Answer < ActiveRecord::Base[5.0]
	
	belongs_to :question
	belongs_to :user
	validates :answer_text, presence: true
	validates :users_id, uniqueness: true 

end
