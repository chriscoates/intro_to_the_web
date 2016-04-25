require "sinatra"

get '/' do
  @randomname = ["Amigo", "Oscar", "Viking", "Tabby"].sample
  erb(:index)
end

get '/secret' do
  "My secret message!"
end

get '/newroute' do
  "This is my new route"
end

get '/andanotherroute' do
  "And this is another route"
end

get '/catfile' do
	send_file 'cat.html'
end

get '/random-cat' do
  "<div>
    <img src='http://bit.ly/1eze8aE' style='border:1px dashed red' >
  </div>"
end

get '/named-cat' do
	p "Passed variable for name: #{params}"
	@randomname = params[:name]
  erb(:index)
end