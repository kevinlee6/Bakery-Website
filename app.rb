require 'sinatra'
require_relative 'components/factory.rb'

get'/' do
  erb :start
end

get '/:product' do
  @target = params[:product]
  erb :products
end