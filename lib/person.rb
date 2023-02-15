class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

# bob_attributes = { name: "Bob", hair_color: "Brown" }
# bob = Person.new(bob_attributes)
# pp bob.name       
# pp bob.hair_color

# susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

# susan = Person.new(susan_attributes)
# pp susan.name      
# pp susan.height    
# pp susan.eye_color