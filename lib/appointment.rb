class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor
  def self.all
    @@all.each do |appointment| puts appointment.date end
  end

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
end
