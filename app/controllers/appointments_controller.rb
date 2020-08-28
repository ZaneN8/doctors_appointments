class AppointmentsController < ApplicationController


  def index
    set_doctor
    @appointments = @doctor.appointments
  end

  def show
  end

  def new
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end


end
