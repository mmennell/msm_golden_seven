class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
    render("directors/show_details.html.erb")
  end

  def new
  end

  def create_row
    d = Director.new
    d.dob = params[:dob]
    d.name = params[:name]
    d.bio = params[:bio]
    d.image_url = params[:image_url]

    d.save

    redirect_to("/directors")

  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params["the_dob"]
    @director.name = params["the_name"]
    @director.bio = params["the_bio"]
    @director.image_url = params["the_image_url"]

    @director.save

    render("directors/show_details.html.erb")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
  
end
