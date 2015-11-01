require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :hello
  end

  get "/" do
    @navfooter = {"Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :hello
  end

  get "/loveseattle.html" do
    @navfooter = {"Home" => "/loveseattle.html", "Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :hello
  end

  get "/seattleparks.html" do
    @navfooter = {"Home" => "/loveseattle.html", "Food" => "/seattlefood.html"}
    erb :parks
  end

  get "/seattlefood.html" do
    @navfooter = {"Home" => "loveseattle.html", "Parks" => "seattleparks.html"}
    erb :food
  end

  get "/about.html" do
    @navfooter = {"Home" => "loveseattle.html", "Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :about
  end
end
