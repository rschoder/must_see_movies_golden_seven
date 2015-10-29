class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

def show
    @actor = Actor.find_by({ :id => params[:id]})
    @actor_title = @actor.title
    @actor_year = @actor.year
    @actor_duration = @actor.duration
    @actor_description = @actor.description
    @actor_url = @actor.image_url
  end

  def new_form
  end

  def create_row
    m = Actor.new
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.url = params[:url]
    m.save
    redirect_to("http://localhost:3000")
  end

  def delete_photo
    delete = Actor.find_by({ :id => params[:id]})
    delete.destroy
    delete.save
  end

  def edit_form
    @edit = Actor.find_by({ :id => params[:id]})
  end

  def update_row
    @edit = Actor.find_by({ :id => params[:id]})
    @edit.title = params[:title]
    @edit.year = params[:year]
    @edit.duration = params[:duration]
    @edit.description = params[:description]
    @edit.url = params[:url]
    @edit.save
    redirect_to("http://localhost:3000/actors")
  end
end
