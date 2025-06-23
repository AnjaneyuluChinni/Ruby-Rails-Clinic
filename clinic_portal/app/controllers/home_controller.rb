class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @patient_count = Patient.count
    @patients_by_day = Patient.group_by_day(:created_at).count
    # Add more data for dashboard cards as needed
    # e.g., @appointment_count = Appointment.count
  end
end 