require_relative "pet.rb"

pet1 = Pet.new("Gremlin", "Purple")
pet2 = Pet.new("Dog", "Purple")
pet3 = Pet.new("Cat", "Purple")

arr = []

arr << pet1
arr << pet2
arr << pet3

p arr
p "====================="
arr.delete_at(0)
p arr