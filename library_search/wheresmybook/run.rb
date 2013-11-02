require 'sinatra'

TITLE="Yo Quiero Book"

get '/' do
	SUBTITLE='Home Page'
	erb :home
end

post '/search' do
	SUBTITLE='Search Results'
	
	erb :results
end
