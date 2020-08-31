# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "faker"

5.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
  )

  5.times do
    user = User.create(
      first_name: Faker::Name.first_name, 
      last_name: Faker::Name.last_name,
    )

      Appointment.create(
        time: Faker::Date.between(from: '2020-09-23', to: '2020-12-31'),
        doctor_id: doctor.id,
        user_id: user.id
      )
  end
end
