# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Assembly.create(name: "Test Assembly 1")
a2 = Assembly.create(name: "Test Assembly 2")

p1 = Part.create(part_number: "0100A")
p2 = Part.create(part_number: "0102B")
p3 = Part.create(part_number: "0143E")
p4 = Part.create(part_number: "0147F")

a1.parts << p1
a1.parts << p2
a1.parts << p3
a1.parts << p4

a2.parts << p1
a2.parts << p2
a2.parts << p3
a2.parts << p4
