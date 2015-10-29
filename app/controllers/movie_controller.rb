class MovieController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

def show
    @movie = Movie.find_by({ :id => params[:id]})
    @movie_title = @movie.title
    @movie_year = @movie.caption
    @movie_duration = @movie.duration
    @movie_description = @movie.description
    @movie_url = @movie.image_url
  end

  def new_form
  end

  def create_row
    m = Movie.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.url = params[:url]
    m.save
    redirect_to("http://localhost:3000")
  end

  def delete_photo
    delete = Movie.find_by({ :id => params[:id]})
    delete.destroy
    delete.save
  end

  def edit_form
    @edit = Movie.find_by({ :id => params[:id]})
  end

  def update_row
    @edit = Movie.find_by({ :id => params[:id]})
    @edit.title = params[:title]
    @edit.year = params[:year]
    @edit.duration = params[:duration]
    @edit.description = params[:description]
    @edit.url = params[:url]
    @edit.save
    redirect_to("http://localhost:3000/movies")
  end
end
