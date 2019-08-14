# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gender.create(name: "Male")
Gender.create(name: "Female")
Gender.create(name: "Non-Binary")
Specialty.create(name: "Behavioral Therapist")
Specialty.create(name: "Psychoanalist")
Specialty.create(name: "PTSD")
Specialty.create(name: "Loneliness")
Specialty.create(name: "Alientist")
Hearo.create(username: 'sfreud', password: 'password', first_name: 'Sigmund', last_name: 'Freud', specialty_id: 2, gender_id: 1, therapist_code: 'YYZ', verified: true)
Smyler.create(username: "SmyleMckenzie", password: 'password', dob: "1980-06-26", gender_id: 1)
Booking.create(starts_at: "2019-08-26 17:00:00", hearo_id: 1)