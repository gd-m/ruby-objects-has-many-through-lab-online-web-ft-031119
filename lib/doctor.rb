class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date , patient)
    new_app = Appointment(date, self, patient)
    @appointments << new_app
    new_app
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |app|
      app.patient
    end

  end



end
