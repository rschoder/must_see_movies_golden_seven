class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

def show
    @director = Director.find_by({ :id => params[:id]})
    @director_name = @director.name
    @director_bio = @director.bio
    @director_dob = @director.dob
    @director_url = @director.image_url
  end

  def new_form
  end

  def create_row
    d = Director.new
    d.name = params[:name]
    d.bio = params[:bio]
    d.dob = params[:dob]
    d.url = params[:url]
    d.save
    redirect_to("http://localhost:3000")
  end

  def delete_photo
    delete = Director.find_by({ :id => params[:id]})
    delete.destroy
    delete.save
  end

  def edit_form
    @edit = Director.find_by({ :id => params[:id]})
  end

  def update_row
    @edit = Director.find_by({ :id => params[:id]})
    @edit.name = params[:name]
    @edit.bio = params[:bio]
    @edit.dob = params[:dob]
    @edit.url = params[:url]
    @edit.save
    redirect_to("http://localhost:3000/directors")
  end
end
