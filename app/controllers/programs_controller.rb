class ProgramsController < ApplicationController
  load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def index
    @programs = Program.all
  end
  
  def show
    @program = Program.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    if @program.save 
      flash[:success] = 'Program created'
      redirect_to @program
    else
      render 'new'
    end
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    if @program.update(program_params)
      flash[:success] = 'Program updated'
      redirect_to @program
    else
      render 'edit'
    end
  end

  def destroy
    Program.find(params[:id]).destroy
    flash[:success] = 'Program deleted'
    redirect_to programs_path
  end

private
  def program_params
    params.require(:program).permit(:title, :date, :time, :category_id, :created_by, :description, hosts_attributes: [:user_id, :id, :_destroy] )
  end
end
