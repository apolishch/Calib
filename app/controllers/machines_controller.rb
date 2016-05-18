class MachinesController < ApplicationController
  
  def index
    @machines = Machine.all
  end

  def new
    @machine = Machine.new
  end

  def create
    Machine.create(machine_params)
    redirect_to root_path
  end

  def machine_params()
    params.require(:machine).permit(:name, :description, :location, :year)
  end
  
  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
    @machine.update_attributes(machine_params)
    redirect_to root_path
  end

  def show
  end
  

end
