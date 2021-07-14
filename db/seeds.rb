# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all

puts "### Seeding Notes"
10.times do |i|
    Note.create(title: "Note#{i+1}", body: "Lorem Ipsum Dolores De Espalda")
    Note.create(title: "Tarea#{i+1}", body: "Lorem Ipsum Dolores De Muñeca", status: 1)
end
puts "### Finished Seeding Notes"
