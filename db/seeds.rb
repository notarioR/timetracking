# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create name: 'Ironhack', description: 'Ironhack is a...'
Project.create name: 'Project 02'
Project.create name: 'Recipes', description: 'Track my favourite recipes'
(0..15).each do |i|
  Project.create name: "In loop #{i}", description: "Loop num #{i} description"
end

p = Project.find(1)
p.entries.create hours: 1, minutes: 30, comment: "Comentario 1", datetime: Time.now
p.entries.create minutes: 40, comment: "Comentario 2", datetime: Time.now

p2 = Project.find(2)
p2.entries.create minutes: 45, comment: "Comentario 1 id 2", datetime: Time.now
p2.entries.create hours: 3, minutes: 40, comment: "Comentario 2 id 2", datetime: Time.now

p3 = Project.find(3)
p3.entries.create minutes: 45, comment: "Comentario 1 id 3", datetime: Time.now
p3.entries.create hours: 3, minutes: 40, comment: "Comentario 2 id 3", datetime: Time.now
p3.entries.create hours: 5, minutes: 10, comment: "Comentario 3 id 3", datetime: Time.now

# (0..15).each do |i|
# 	project = Project.create name: "Ironhack #{i}", description: "Description #{i}"
# 	project.entries.create hours: 0, minutes: 45, comment: "Prueba", datetime: Time.now
# end


