get '/answer/:questions_id' do

	@q_id = params[:questions_id]
	erb :"static/answer"
	
end

post '/answer/' do

	answer = Answer.new(params[:answer])

	if answer.save

		erb :"static/session"

	else

		@error = "Oops something went wrong!"

	end
	
end