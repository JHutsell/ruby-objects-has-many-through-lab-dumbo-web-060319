# class Doctor 
#   attr_reader :name
  
#   @@all = []
  
#   def initialize(name)
#     @name = name 
    
#     @@all << self
#   end
  
#   def new_appointment(date, patient)
#     Appointment.new(date, patient, self)
#   end
  
#   def appointments 
#     Appointment.all.select { |appointment| appointment.doctor == self } 
#   end
  
#   def patients 
#     appointments.map { |appointment| appointment.patient }
#   end
  
#   def self.all 
#     @@all 
#   end
  
# end






class Doctor
    @@all=[]
    attr_accessor :name

    def initialize(name)
        @name=name
        @@all<< self
    end

    def self.all
        @@all
    end

    def new_appointment(patient,date)
      Appointment.new(date,patient,self)

    end


    def appointments
        Appointment.all.select{|appointment_instance| appointment_instance.doctor==self}
    end

    def patients
        self.appointments.map{|instance| instance.patient}
    end
end