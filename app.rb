require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    phrase = ''
    @num.times do
      phrase = phrase + @phrase
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @phrase
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @op
    when 'add'
      @res = @num1 + @num2
    when 'subtract'
      @res = @num1 - @num2
    when 'divide'
      @res = @num1 / @num2
    when 'multiply'
      @res = @num1 * @num2
    end
    @res.to_s
  end
end