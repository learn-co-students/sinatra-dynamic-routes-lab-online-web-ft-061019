require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse!
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
    
  get "/say/:number/:phrase" do
    sentence = ""
    @number = params[:number].to_i
    @number.times do
      sentence += "#{params[:phrase]}\n"
    end
    sentence
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    sentence
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      result = num1 + num2
    elsif operation == "subtract"
      result = num1 - num2 
    elsif operation == "multiply"
      result = num1 * num2
    elsif operation == "divide"
      result = num1 / num2
    else
      "nope"
    end
    "#{result.to_s}"
  end
end