require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :hello
  end

  get "/loveseattle.html" do
    erb :hello
  end

  get "/seattleparks.html" do
    erb :parks
  end

  get "/seattlefood.html" do
    erb :food
  end
end
