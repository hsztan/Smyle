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
Status.create(name: 'Offline')
Status.create(name: 'Online')
Status.create(name: 'Away')
Specialty.create(name: "Behavioral Therapist")
Specialty.create(name: "Psychoanalist")
Specialty.create(name: "PTSD")
Specialty.create(name: "Loneliness")
Specialty.create(name: "Alientist")
Hearo.create(username: 'sfreud', email: 'sfreud@gmail.com', password: 'password', first_name: 'Sigmund', last_name: 'Freud', specialty_id: 2, gender_id: 1, therapist_code: 'YYZ', verified: true, dob: "1980-06-26")
Hearo.create(username: 'jpiaget', email: 'jpiaget@gmail.com', password: 'password', first_name: 'Jean', last_name: 'Piaget', specialty_id: 1, gender_id: 1, therapist_code: 'BGY', verified: true, dob: "1980-06-26")
Hearo.create(username: 'BFSkinner', email: 'bfskinner@gmail.com', password: 'password', first_name: 'Burrhus', middle_name: 'Frederic', last_name: 'Skinner', specialty_id: 2, gender_id: 1, therapist_code: 'BSR', verified: true, dob: "1980-06-26")
Hearo.create(username: 'hnawrocki', email: 'hnawrocki@gmail.com', password: 'password', first_name: 'Henry', middle_name: 'Adam', last_name: 'Nawrocki', specialty_id: 5, gender_id: 1, therapist_code: 'HNS', verified: true, dob: "1980-06-26", status_id: 2)
Smyler.create(username: "SmyleMckenzie", first_name: 'Smyle', last_name: 'Mckenzie', email: 'smyler@mckenzie.com', password: 'password', dob: "1980-06-26", gender_id: 1)
Smyler.create(username: "hnawrocki", first_name: 'Henry', middle_name: 'A', last_name: 'Nawrocki', email: 'hnawrocki@gmail.com', password: 'password', dob: "1980-06-26", gender_id: 1)
Booking.create(starts_at: "2019-08-26 17:00:00", hearo_id: 1)
Booking.create(starts_at: "2019-08-26 18:00:00", hearo_id: 1)
Booking.create(starts_at: "2019-08-26 12:00:00", hearo_id: 1)
Meeting.create(title: "First Contact", start_time: '2019-08-26 18:00:00', smyler_id: 1, hearo_id:1, notes: 'This meeting is the first of few that will make you smile.')