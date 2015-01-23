require 'sinatra'
require 'pry'
require "sinatra/reloader" 
require 'artii'

get "/" do 
	erb :home	
end


get "/ascii/:word" do


	a = Artii::Base.new
	@word = a.asciify(params[:word])

	erb :asciiprinter
end
	


