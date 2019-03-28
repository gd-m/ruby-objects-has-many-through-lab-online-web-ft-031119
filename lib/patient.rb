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

  def appointments
    array = []
    Appointment.all.collect do |app|
      if app.patient == self
        array << app
      end
      end
  end

  def new_appointment(doctor , date)
    new_app = Appointment.new(doctor, self, date)
    @appointments << new_app
    new_app
  end

  def doctors

  end

end
