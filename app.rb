require "sinatra/base"

class App < Sinatra::Base
  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
  end

  get "/team" do
    erb :team
  end
end

# <form method="POST" action="/newteam">
#   <p>Team name: <input type="text" name="name"></p>
#   <p>Coach: <input type="text" name="coach"></p>
#   <p>Point Guard: <input type="text" name="pg"></p>
#   <p>Shooting Guard: <input type="text" name="sg"></p>
#   <p>Power Forward: <input type="text" name="pf"></p>
#   <p>Small Forward: <input type="text" name="sf"></p>
#   <p>Center: <input type="text" name="c"></p>
#   <input type="submit" value="Submit">
# </form>
