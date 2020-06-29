<<<<<<< HEAD
require 'pry'
class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    # binding.pry
    Appointment.all.map do |appt|
      appt.patient
    end
  end

=======
class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(appointment)
    @appointments << appointment
  end

  def appointments
    self.appointments.collect { |a| a.doctor }
  end
  
>>>>>>> c8a828d72615dc085374a0c0f0c686cd8c1725aa
  def self.all
    @@all
  end

<<<<<<< HEAD
  def new_appointment(date,patient)
    Appointment.new(date, patient, self)
  end

end 
=======
  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
>>>>>>> c8a828d72615dc085374a0c0f0c686cd8c1725aa
