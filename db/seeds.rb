# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@astronaut_1 = Astronaut.create(name: "John", age: 40, job: "tech")
@astronaut_2 = Astronaut.create(name: "Steve", age: 42, job: "pilot")
@astronaut_3 = Astronaut.create(name: "Karen", age: 56, job: "pilot")
@astronaut_4 = Astronaut.create(name: "Ted", age: 26, job: "pilot")
@mission_1 = @astronaut_1.missions.create(title: "apollo 14", :time_in_space 1980)
