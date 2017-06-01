require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
   erb :index
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']

  erb :bio
end

get '/favourites' do

  @fav_links = ['http://www.bleacherreport.com/', 'http://www.blogto.com/', 'http://www.twitter.com/']

  erb :favourites
end
