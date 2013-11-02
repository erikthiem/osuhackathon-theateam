require 'sinatra'

TITLE='Test Web App'

def convertToPigLatin(sometext)
	return sometext[1..-1] + sometext[0] + "ay"
end

get '/' do
	SUBTITLE='Home Page'
	erb :home
end

post '/input' do
	SUBTITLE='Translation'
	CONVERTED_TEXT=convertToPigLatin(params[:sometext])
	erb :results
end
