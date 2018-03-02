class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date
    self.appointment_datetime.strftime('%B %d, %Y')
  end

  def time
    self.appointment_datetime.strftime('%H:%M')
  end
end
