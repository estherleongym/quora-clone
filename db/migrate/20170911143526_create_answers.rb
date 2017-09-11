class CreateAnswers < ActiveRecord::Migration

	def change

		create_table :answers do |t|

		t.references :users, index: true
		t.references :questions, index: true
		t.text :answer_text

		t.timestamps null: false

		end	
	
	end

end
