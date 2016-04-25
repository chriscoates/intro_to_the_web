require "sinatra"

get '/' do
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

get '/cat' do
	erb(:cat)
end
