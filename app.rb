require 'sinatra'
require 'sinatra/activerecord'

set :sessions, true

set :database, 'sqlite3:finalProject_database.sqlite3'


require './models'

get '/' do
	@user = current_user
	erb :home
end

get '/logout' do
	session[:user_id] = nil
	redirect '/'
end

get '/createaccount' do
	@user = current_user
	erb :create
end

get '/courses' do
	@user = current_user
	erb :courses
end

get '/about' do
	erb :about
end

get '/golfreviews' do
	@user = current_user
	if @user 
		erb :reviews 
	else
		redirect '/createaccount'
	end
end

post '/' do 
	@user = User.where(username: params[:username]).first
	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		redirect '/'
	else
		redirect '/createaccount'
	end
end

# @user = User.where(username: params[:username]).first
# if @user && @user.password == params[:password]
# 	session[]

def current_user
	if session[:user_id]
		@current_user = User.find(session[:user_id])
	end
end

