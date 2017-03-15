class InstructorsController < ApplicationController

  def new
  	@instructor = Instructor.new
  end

  def index
    @instructors = Instructor.all
  end

  def show
  end

  def create
  	@instructor = Instructor.new(instructor_params)
  	respond_to do |format|
  		if @instructor.save
        flash[:success] = "Instructor was successfully created."
        # redirect_to @user
        format.html { redirect_to @instructor}
        format.json { render :show, status: :created, location: @instructor }  			
    else
    	format.html {render :new }
    	format.json {render json: @instructor.errors, status: :unprocessable_entity }
    end
  end
end
