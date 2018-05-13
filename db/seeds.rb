# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
locations = ["Seaside", "Salinas", "Monterey", "San Fracisco", "San Jose", "Watsonville", "Santa Cruz", "Oakland", "Los Angeles", "Mountainview"]
technologies = ["HTML5", "CSS3", "JavaScript", "Angular", "ReactJS", "Git", "Java", "PHP", "C++", "Vue.js", "Bootstrap", "Ruby", "Rails", "RSpec", "NodeJS"]
titles = ["DevOps Engineer", "Web Developer", "Software Engineer", "Software Developer", "Rails Developer"]
10.times do 
    jobs = Job.create!(job_title: titles.sample, technologies: 3.times.map {technologies.sample}, location: locations.sample, comment: "", date_applied: "#{rand(12)}-#{rand(28)}-2018", rating: rand(5)  )
  
end