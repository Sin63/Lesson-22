require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end

get '/demo' do
	erb :demo
end

get '/masters' do
	erb :masters
end

post '/visit' do
	@user_name=params[:username]
	@phone_number=params[:phone]
	@date_time=params[:datetime]
	@master=params[:barber]
	@color=params[:colorpicker]


 erb "Ok, #{@user_name}, #{@phone_number}, #{@date_time}, #{@master}, color: #{@color}"
end
