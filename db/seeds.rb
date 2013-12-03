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
students = User.create([{ name: 'Raleigh Froeber', email: 'raleigh@raleigh.com', password: 'raleigh', password_confirmation: 'raleigh', type: 'student' }, { name: 'Russell Taff', email: 'russell@russell.com', password: 'russell', password_confirmation: 'russell', type: 'student' }, { name: 'Ann Millspaugh', email: 'ann@ann.com', password: 'ann', password_confirmation: 'ann', type: 'student' }])

employers = User.create([{ name: 'HowAboutWe', email: 'howaboutwe@HowAboutWe.com', password: 'howaboutwe', password_confirmation: 'howaboutwe', type: 'employer' }, { name: 'Anns Bakery', email: 'annsbakery@annsbakery.com', password: 'annsbakery', password_confirmation: 'annsbakery', type: 'employer' }, { name: 'Davis" Racks', email: 'davisracks@davisracks.com', password: 'davisracks', password_confirmation: 'davisracks', type: 'employer' }, { name: 'Raleighs Totes', email: 'raleighstotes@raleighstotes.com', password: 'raleighstotes', password_confirmation: 'raleighstotes', type: 'employer' }, { name: 'Radar', email: 'radar@radar.com', password: 'radar', password_confirmation: 'radar', type: 'employer' }])