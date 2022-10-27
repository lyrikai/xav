# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all


10.times do
    city = City.create!(city_name: Faker::Address.city)
end

ok3 = City.first.id

10.times do 
    nb = rand(1..6)
    cityrand = rand(0..9)
    citynb = cityrand + ok3
    testm = City.find(citynb)
    puts testm.inspect

    genree = ''
    if nb == 1
        genree = "Gynecologic"
    elsif nb == 2
        genree = "Generalist"
    elsif nb == 3
        genree = "Cardiothoracic"
    elsif nb == 4
        genree = "Toxicology"
    elsif nb == 5
        genree = "Oncology"
    else 
        genree = "Neuroradiology"
    end

    doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: genree, zip_code: Faker::Number.number(digits: 5), citie_id: testm)
    puts doc.inspect
end


=begin
ok = Doctor.first.id
ok2 = Patient.first.id



50.times do 
    doc = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
end


70.times do 
    doc = rand(0..19)
    pat = rand(0..49)

    docnb = ok + doc     
    test = Doctor.find(docnb)

    patnb = ok2 + pat     
    test2 = Patient.find(patnb)

    ap = Appointment.create!(doctor: test, patient: test2)
end

=end