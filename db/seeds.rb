# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#  cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)
students = Student.create([{ name: 'Raleigh Froeber', email: 'raleigh@raleigh.com', password_digest: 'raleigh', type: 'student' }, { name: 'Davis Koh', email: 'davis@davis.com', password_digest: 'davis', type: 'student' }, { name: 'Russell Taff', email: 'russell@russell.com', password_digest: 'russell', type: 'student' }, { name: 'Ann Millspaugh', email: 'ann@ann.com', password_digest: 'ann', type: 'student' }, { name: 'Davis Koh', email: 'davis@davis.com', password_digest: 'davis', type: 'student' }])

employers = Employer.create([{ name: 'HowAboutWe', email: 'howaboutwe@HowAboutWe.com', password_digest: 'howaboutwe', type: 'employer' }, { name: 'Anns Bakery', email: 'annsbakery@annsbakery.com', password_digest: 'annsbakery', type: 'employer' }, { name: 'Davis" Racks', email: 'davisracks@davisracks.com', password_digest: 'davisracks', type: 'employer' }, { name: 'Raleighs Totes', email: 'raleighstotes@raleighstotes.com', password_digest: 'raleighstotes', type: 'employer' }, { name: 'Radar', email: 'radar@radar.com', password_digest: 'radar', type: 'employer' }])