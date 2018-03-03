class DoctorsController < ApplicationController
  before_action :get_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  private

    def get_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end
