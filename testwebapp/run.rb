require 'sinatra'

get '/' do
	TITLE='Test Web App'
	SUBTITLE='Home Page'
	erb :home
end
