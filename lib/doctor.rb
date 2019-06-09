class Doctor 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    
    @@all << self
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  
  
end