class MachinesController < ApplicationController
  respond_to :html, :js
  
  def index
    @machines = Machine.search(params[:search])
  end

  def new
    @machine = Machine.new
  end

  def create
    machine = Machine.create(machine_params)
    respond_to do |format|
      format.html {
        redirect_to root_path
      }
      format.js {
        render json: machine.as_json
      }
    end
  end

  def machine_params()
    params.require(:machine).permit(:name, :description, :location, :year, :customer_id)
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
    @machine = Machine.find(params[:id])
    @service = Service.new
    
  end
  

end
