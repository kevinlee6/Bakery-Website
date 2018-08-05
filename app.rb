require 'sinatra'
require 'sinatra/reloader'
# require 'sendgrid-ruby'
# include SendGrid
require_relative 'components/kitchen.rb'

bakery0 = Bakery.new('Ruby Bakery')

@cookies.each { |x| bakery0.add_to_products('cookies', x) }
@cakes.each { |x| bakery0.add_to_products('cakes', x) }
@muffins.each { |x| bakery0.add_to_products('muffins', x) }

get '/' do
  erb :start
end

get '/about' do
  erb :about, :layout => :layout2
end

get '/:product' do
  @target = params[:product]
  @arr = bakery0.get_product(@target)

  erb :products
end