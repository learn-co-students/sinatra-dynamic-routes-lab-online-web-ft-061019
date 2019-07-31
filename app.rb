require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  get '/square/:number' do 
     @sq_num = params[:num]
     "#{@sq_num}"
     binding.pry
     
  end 
  get '/say/:number/:phrase' do
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  end 
  get '/:operation/:number1/:number2' do
  end


end