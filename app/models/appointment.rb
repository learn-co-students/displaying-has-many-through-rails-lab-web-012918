class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def get_date
    datetime_string = self.appointment_datetime.to_s
    datetime_array = datetime_string.split(/[\s,-]/)
    year = datetime_array[0]
    month = ""
    day = datetime_array[2].to_s
    time = datetime_array[3][0..4]
    if datetime_array[1] == "01"
      month = "January"
    elsif datetime_array[1] == "02"
      month = "February"
    elsif datetime_array[1] == "03"
      month = "March"
    elsif datetime_array[1] == "04"
      month = "April"
    elsif datetime_array[1] == "05"
      month = "May"
    elsif datetime_array[1] == "06"
      month = "June"
    elsif datetime_array[1] == "07"
      month = "July"
    elsif datetime_array[1] == "08"
      month = "August"
    elsif datetime_array[1] == "09"
      month = "September"
    elsif datetime_array[1] == "10"
      month = "October"
    elsif datetime_array[1] == "11"
      month = "November"
    elsif datetime_array[1] == "12"
      month = "December"
    end
    month + " " + day + ", " + year + " at " + time
  end
end
