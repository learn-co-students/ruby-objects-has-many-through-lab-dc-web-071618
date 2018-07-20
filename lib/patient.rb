class Patient
  attr_accessor :name
 # Patient #new initializes with a name
  def initialize(name)
    @name = name
  end
# Patient #new_appointment given a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
#  Patient #doctors has many doctors through appointments

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
