require 'sinatra'

class App < Sinatra::Base
   # Add this line to set the Content-Type header for all responses
   set :default_content_type, 'application/json'

  #this is a routing DSL (domain specific language ) we are inhering it from Sinatra 

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end
  # send back some HTML dynamically by generating a string with Ruby
  # get '/dice' do
  #   dice_roll = rand(1..6)
  #   "<h2>You rolled a #{dice_roll}</h2>"
  # end
 #making our application generate a json data 
  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end
  
end

run App
