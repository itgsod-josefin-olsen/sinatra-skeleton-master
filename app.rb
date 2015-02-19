class App < Sinatra::Base
  enable :sessions

  get '/' do #om det kommer en förfrågan efter resursen "/"
    @users = User.all
    @products = Product.all
    @statuses = Status.all
    @line_items = LineItem.all
    @orders = Order.all
    slim :index
  end

  before %r{^(?!/login$)} do
    @user = User.get(session[:user].to_i) if session[:user]
    redirect '/login' unless @user
  end

  get '/login' do
    slim :index
  end

  post '/login' do
    user = User.first(username: params['username'])
    if user.password == params['password']
      session[:user] = user.id
      redirect '/'
    else
      redirect back
    end
  end

  post '/logout' do
    session.clear
    redirect 'login/'
  end


end