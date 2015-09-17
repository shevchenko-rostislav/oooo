require 'sinatra'

get '/' do
	erb :index
end

get '/contacts' do
	@title="Contacts"
	@message="Phone number: 21221"

	erb :message
end

get '/faq' do
	@title="FAQ"
	@message="Under contruction"

	erb :message
end

get '/something' do
	@title="Something"
	@message="BLABla"

	erb :message
end

post '/' do 
	@login = params[:aaa]
	@password  = params[:bbb]
	erb :index

	if @login == "admin" && @password == "secret"
		erb :welcome
	elsif @login =="admin" && @password == "admin"
		@message ="Ha ha nice try"
		erb :index
	else
		@message ="Access denied"
		erb :index
	end
end