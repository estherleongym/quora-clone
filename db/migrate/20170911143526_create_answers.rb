class CreateAnswers < ActiveRecord::Migration[5.0]

	def change

		create_table :answers do |t|

		t.references :users, index: true, foreign_key: true
		t.references :questions, index: true, foreign_key: true
		t.text :answer_text

		t.timestamps null: false

		end	
	
	end

end
