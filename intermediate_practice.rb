class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def find_oldest_person

  end

end



people = []
people << Person.new("Alice", 24)
people << Person.new("Dave", 26)
people << Person.new("Zayn", 30)
people << Person.new("Lauren", 13)
people << Person.new("Raine", 90)

list = people.sort_by do |person|
  person.name
end

list.map do |person|
  person.name # or person.age
end
