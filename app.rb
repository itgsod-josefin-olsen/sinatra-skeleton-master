class App < Sinatra::Base
  enable :sessions

  get '/' do
    db = SQLite3::Database.new('db/Gymnasiearbete-Fikabudet.sqlite')
    slim :index
  end

end