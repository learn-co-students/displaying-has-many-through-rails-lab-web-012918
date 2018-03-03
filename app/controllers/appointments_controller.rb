class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    @date_and_time = @appointment.get_date
  end

end
