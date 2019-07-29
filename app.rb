require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
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

  #Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.

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