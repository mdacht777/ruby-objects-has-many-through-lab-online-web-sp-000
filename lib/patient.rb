class Patient
<<<<<<< HEAD

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
    # binding.pry
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
end 
=======
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
>>>>>>> c8a828d72615dc085374a0c0f0c686cd8c1725aa
