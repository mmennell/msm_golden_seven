class MoviesController < ApplicationController

def index
    @movies = Movie.all
end

def show
  @movie = Movie.find(params["id"])
end

def new_form
end

def create_row
  m = Movie.new
  m.title = params[:title]
  m.year = params[:year]
  m.duration = params[:duration]
  m.description = params[:description]
  m.image_url = params[:image_url]

  m.save

  redirect_to("/movies/" + m.id.to_s)
  # render("show")
end

def edit_form
  @movie = Movie.find(params[:id])
end

def update_row
  @movie = Movie.find_by({ :id => params["id"] })
  @movie.title = params[:title]
  @movie.year = params[:year]
  @movie.duration = params[:duration]
  @movie.description = params[:description]
  @movie.image_url = params[:image_url]
  @movie.save

  render("show")
end

def destroy

Movie.find_by({ :id => params["id"] }).destroy
redirect_to("/")

end

end
