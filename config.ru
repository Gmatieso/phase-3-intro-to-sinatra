require 'sinatra'

class App < Sinatra::Base
   # Add this line to set the Content-Type header for all responses
   #"updating the default response header for all responses to indicate our server is returning a JSON"
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

  #defining dynamic routing 
  get '/add/1/2' do
    sum = 1 + 2
    { result: sum }.to_json
  end

   # :num1 and :num2 are named parameters
   get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { result: sum }.to_json
  end

  #This example won't work yet, since we don't have a Game class set up
  # get '/games/:id' do
  #   game = Game.find(params[:id])
  #   game.to_json
  # end
  
  
end

run App
