class AppointmentsController < ApplicationController
 before_action :set_doctor

  def index
    @appointments = @doctor.appointments
  end

  # def show
  #   @appointments = @doctor.appointments.find(@doctor_id)
  # end

  def new
    @appointments = @doctor.appointments.new
  end

  def create
    @appointment = @doctor.appointments.new(appointment_params)
    if @appointment.save
      redirect_to doctor_appointments_path(@doctor)
    else
      render :new   
    end

    def destroy
      @appointment = @doctor.appointments.find(params[:id])
      @appointment.destroy
      redirect_to doctor_appointments_path(@doctor)
    end
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :doctor_id)
  end

end
