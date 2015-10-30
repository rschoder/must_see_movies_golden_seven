class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]})
    @actor_name = @actor.name
    @actor_bio = @actor.bio
    @actor_dob = @actor.dob
    @actor_url = @actor.image_url
  end

  def new_form
  end

  def create_row
    d = Actor.new
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.url = params[:url]
    d.save
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
    @edit.name = params[:name]
    @edit.bio = params[:bio]
    @edit.dob = params[:dob]
    @edit.url = params[:url]
    @edit.save
    redirect_to("http://localhost:3000/actors")
  end
end
