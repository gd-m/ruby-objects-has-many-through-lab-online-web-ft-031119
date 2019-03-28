require 'pry'
class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []

  end

  def self.all
    @@all
  end

  def doctors
    array = []
    Appointment.all.collect do |app|
      if app.patient == self
        array << app
      end
      end
  end

  def new_appointment(doctor , date)
    new_app = Appointment.new(self,doctor, date)
    @appointments << new_app
    new_app
    binding.pry
  end

  def appointments
    @appointments

  end

end
