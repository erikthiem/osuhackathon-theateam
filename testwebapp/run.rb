require 'sinatra'

TITLE='Test Web App'

def convertToPigLatin(sometext)
	input = sometext.split(" ")
	output = ""
	
	input.each do |input|
		output += input[1..-1] + input[0] + 'ay'
		output += " "
	end

	return output
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
