require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
include SendGrid
require_relative 'components/kitchen.rb'

bakery0 = Bakery.new('Ruby Bakery')

@cookies.each { |x| bakery0.add_to_products('cookies', x) }
@cakes.each { |x| bakery0.add_to_products('cakes', x) }
@muffins.each { |x| bakery0.add_to_products('muffins', x) }

visited = false
get '/' do
  if visited
    erb :start
  else
    visited = true
    erb :landing_content, :layout => :landing
  end
end

get '/about' do
  @misc = true
  erb :about
end

get '/contact' do
  @misc = true
  erb :contact
end

get '/:product' do
  @target = params[:product]
  @arr = bakery0.get_product(@target)

  erb :products
end

cookies = @cookies
cakes = @cakes
muffins = @muffins

post '/' do
  email = params[:email]
  i = 0
  product = 6

  from = Email.new(email: 'kevin.lee.data@gmail.com')
  to = Email.new(email: email)
  subject = "Ruby Bakery's Catalog"
  content = Content.new(type: 'text/html', value: "
    <h1>Thanks for visiting Ruby Bakery.</h1>
    Here is the catalog:
    <ul>
      <li> Cookies
        <ul>
          <li>#{cookies[i%product].desc}, $#{cookies[(i+=1)%product].price}</li>
          <li>#{cookies[i%product].desc}, $#{cookies[(i+=1)%product].price}</li>
          <li>#{cookies[i%product].desc}, $#{cookies[(i+=1)%product].price}</li>
          <li>#{cookies[i%product].desc}, $#{cookies[(i+=1)%product].price}</li>
          <li>#{cookies[i%product].desc}, $#{cookies[(i+=1)%product].price}</li>
          <li>#{cookies[i%product].desc}, $#{cookies[(i+=1)%product].price}</li>
        </ul>
      </li>
      <li> Cakes
        <ul>
          <li>#{cakes[i%product].desc}, $#{cakes[(i+=1)%product].price}</li>
          <li>#{cakes[i%product].desc}, $#{cakes[(i+=1)%product].price}</li>
          <li>#{cakes[i%product].desc}, $#{cakes[(i+=1)%product].price}</li>
          <li>#{cakes[i%product].desc}, $#{cakes[(i+=1)%product].price}</li>
          <li>#{cakes[i%product].desc}, $#{cakes[(i+=1)%product].price}</li>
          <li>#{cakes[i%product].desc}, $#{cakes[(i+=1)%product].price}</li>
        </ul>
      </li>
      <li> Muffins
        <ul>
          <li>#{muffins[i%product].desc}, $#{muffins[(i+=1)%product].price}</li>
          <li>#{muffins[i%product].desc}, $#{muffins[(i+=1)%product].price}</li>
          <li>#{muffins[i%product].desc}, $#{muffins[(i+=1)%product].price}</li>
          <li>#{muffins[i%product].desc}, $#{muffins[(i+=1)%product].price}</li>
          <li>#{muffins[i%product].desc}, $#{muffins[(i+=1)%product].price}</li>
          <li>#{muffins[i%product].desc}, $#{muffins[(i+=1)%product].price}</li>
        </ul>
      </li>
    </ul>
    Feel free to e-mail back if there are any further inquiries.
  ")
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)

  erb :start
end