class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

<<<<<<< HEAD
  def initialize(date, patient, doctor)
=======
  def initialize(patient, date, doctor)
>>>>>>> c8a828d72615dc085374a0c0f0c686cd8c1725aa
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end 