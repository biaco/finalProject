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


post '/createaccount' do
	if params[:password] == params[:password2] && params[:email] == params[:email2]
		User.create(username: params[:username], password: params[:password], fname: params[:fname], lname: params[:lname], email: params[:email], handicap: params[:handicap])
		redirect '/'
	else
		redirect '/createaccount' 
	end
end

get '/courses' do
	@user = current_user
	@courses = Course.all
	if @user 
		erb :courses
	else 
		erb :courses2
	end
end

get '/about' do
	erb :about
end

get '/confirm' do
	erb :confirm
end

get '/createcourse' do
	erb :createcourse
end

get '/golfreviews' do
	@user = current_user
	@courses = Course.all
	if @user 
		@reviews = User.find(@user.id).reviews
		puts @reviews.inspect
		erb :reviews 
		else
		redirect '/createaccount'
	end
end

post '/golfreviews' do 
	@user = current_user
	@course = Course.find_by(coursename: params[:courseplayed])
	puts @course
	Review.create(user_id: @user.id, course_id: @course.id, courseplayed: params[:courseplayed], dateplayed: params[:dateplayed], datereviewed: params[:datereviewed], paceofplay: params[:paceofplay], conditions: params[:conditions], staff: params[:staff], facilities: params[:facilities], value: params[:value], recommend: params[:recommend], gen_review: params[:gen_review], hole1: params[:hole1], hole2: params[:hole2], hole3: params[:hole3], hole4: params[:hole4], hole5: params[:hole5], hole6: params[:hole6], hole7: params[:hole7], hole8: params[:hole8], hole9: params[:hole9], hole10: params[:hole10], hole11: params[:hole11], hole12: params[:hole12], hole13: params[:hole13], hole14: params[:hole14], hole15: params[:hole15], hole16: params[:hole16], hole17: params[:hole17], hole18: params[:hole18])
	redirect '/confirm'
end 

post '/createcourse' do
	Course.create(coursename: params[:coursename], address: params[:address], public_course: params[:public_course], numberOfholes: params[:numberOfholes], coursehandicap: params[:coursehandicap], description: params[:description])
	redirect '/golfreviews'
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


# form_tag("/search", method: "get") do 
# 	label_tag(:q, "Search for:") 
# 	text_field_tag(:q) 
# 	submit_tag("Search") 
# end 