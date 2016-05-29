class ServicesController < ApplicationController
  def create
    @machine = Machine.find(params[:machine_id])
    @machine.services.create(service_params)
    redirect_to machine_path(@machine)
  end

  private

  def service_params
    params.require(:service).permit(:description, :date, :supplier, :place, :order)
  end
end
