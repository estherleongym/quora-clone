
get '/questions/ask' do

  erb :"static/question"
	
end


post '/questions/submit_question' do

  @question = Question.new(params[:questions])

  	if @question.save

  		puts "Question submitted successfully!"

  	else

  		puts "Oops something went wrong!"

  	end

 erb :"static/session"

end