require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :hello
  end

  get "/loveseattle.html" do
    @footerlinks = {"Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :hello
  end

  get "/seattleparks.html" do
    @footerlinks = {"Home" => "/loveseattle.html", "Food" => "/seattlefood.html"}
    erb :parks
  end

  get "/seattlefood.html" do
    @footerlinks = {"Home" => "loveseattle.html", "Parks" => "seattleparks.html"}
    erb :food
  end
end
