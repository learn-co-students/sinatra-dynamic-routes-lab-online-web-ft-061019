require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

get '/square/:number' do 
  "#{params[:number].to_i ** 2}"
end

get '/say/:number/:phrase' do
    "#{Array.new(params[:number].to_i, params[:phrase]).join(", ")}"
  end

get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params.values.join(" ")}."
end

  get '/:operation/:number1/:number2' do
    
    operation, num1, num2 = params.values
    num1 = num1.to_i 
    num2 = num2.to_i

    case operation
    when "add"
      "#{num1 + num2}"
    when "subtract"
      "#{num1 - num2}"
    when "multiply"
      "#{num1 * num2}"
    when "divide"
      "#{num1 / num2}"  
    end
  end

end