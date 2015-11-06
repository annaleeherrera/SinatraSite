require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    @navfooter = {"About" => "about.html", "Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :hello
  end

  get "/loveseattle.html" do
    @navfooter = {"Home" => "/loveseattle.html", "About" => "about.html", "Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :hello
  end

  get "/seattleparks.html" do
    @navfooter = {"Home" => "/loveseattle.html", "About" => "about.html", "Food" => "/seattlefood.html"}
    erb :parks
  end

  get "/seattlefood.html" do
    @navfooter = {"Home" => "loveseattle.html", "About" => "about.html", "Parks" => "seattleparks.html"}
    erb :food
  end

  get "/about.html" do
    @navfooter = {"Home" => "loveseattle.html", "Parks" => "seattleparks.html", "Food" => "/seattlefood.html"}
    erb :about
  end
end
