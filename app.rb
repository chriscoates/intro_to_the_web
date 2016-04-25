require "sinatra"

get '/' do
  "Hello World!"
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