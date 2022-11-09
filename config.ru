require 'sinatra'

class App < Sinatra::Base

  #this is a routing DSL (domain specific language ) we are inhering it from Sinatra 

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end

  get '/dice' do
    dice_roll = rand(1..6)
    "<h2>You rolled a #{dice_roll}</h2>"
  end
  
end

run App
