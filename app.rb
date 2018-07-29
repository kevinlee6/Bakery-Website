require 'sinatra'

get'/' do
  erb :start
end

get '/:product' do
  target = params[:product]
  erb :products
end