require 'sinatra'
require 'nokogiri'
require 'open-uri'


get '/' do
	erb :home
end

get '/search/:term' do

	results = Array.new

	url = "http://library.ohio-state.edu/search/X?SEARCH=" + params[:term] + "&searchscope=7&SORT=D"

	# Query the OSU Library website
	html_search_result = Nokogiri::HTML(open(url))
	
	# Look through the html to get the desired results
	html_search_result.css('.briefCitRow').each do |result|
		results.push(result.content)
	end


	results[0]

end
