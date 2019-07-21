class Doctor

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    x = Appointment.new(date, patient, self)
    x
  end

  # def appointments
  #   self.all.name == self
  # end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    appointments.collect do |patient|
      appt.doctor
    end
  end

end
