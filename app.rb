require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @user_name = params[:name].reverse
    "#{@user_name}"
  end 

  get "/square/:number" do 
    @num = params[:number].to_i
    "#{@num**2}"
  end 

  get "/say/:number/:phrase" do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @wrd1 = params[:word1]
    @wrd2 = params[:word2]
    @wrd3 = params[:word3]
    @wrd4 = params[:word4]
    @wrd5 = params[:word5]
    erb :saywords
  end 

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation 
  end 
end