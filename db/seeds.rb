# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
a =  Patient.create(first_name: 'Marshall', last_name: 'Mathers', birthdate: "1972-10-17")
b =  Patient.create(first_name: 'Edward', last_name: 'Hyde', birthdate: "1986-1-5")
c =  Patient.create(first_name: 'Christopher', last_name: 'Walken', birthdate: "1943-3-31")
d =  Patient.create(first_name: 'Anna', last_name: 'Kendrick', birthdate: "1985-7-9")
j =  Patient.create(first_name: 'Air', last_name: 'Bud', birthdate: "1997-8-1")

e = Doctor.create(first_name: 'Theodor', last_name: 'Suess', specialty: "Writer")
f = Doctor.create(first_name: 'Dre', last_name: 'Young', specialty: "Rap")
g = Doctor.create(first_name: 'Henry', last_name: 'Jeckll', specialty: "Physician" )
h = Doctor.create(first_name: 'John', last_name: 'Dolittle', specialty: "Veterinarian")
i = Doctor.create(first_name: 'Drake', last_name: 'Ramoray', specialty: "Surgeon" )
k = Doctor.create(first_name: 'Michaela', last_name: 'Quinn', specialty: "Medicine")

Relationship.create(patient: a, doctor: f)
Relationship.create(patient: b, doctor: g)
Relationship.create(patient: c, doctor: e)
Relationship.create(patient: j, doctor: h)

Appointment.create(location: "South Bay Veterinary Clinic", date: "2015-12-8", timeslot: "2:00pm", patient: j, doctor: h)
Appointment.create(location: "8 Mile Road", date: "2015-12-10", timeslot: "4:00pm", patient: a, doctor: f)
Appointment.create(location: "Rock Bottom", date: "2015-12-11", timeslot: "6:00pm", patient: d, doctor: e)
Appointment.create(location: "South Bay Veterinary Clinic", date: "2015-12-11", timeslot: "3:00pm", doctor: h)
Appointment.create(location: "Boston", date: "2015-12-18", timeslot: "10:00am", patient: b, doctor: k)
Appointment.create(location: "Boston", date: "2015-12-18", timeslot: "10:00am", doctor: e)
Appointment.create(location: "Boston", date: "2015-12-18", timeslot: "10:00am", doctor: k)
