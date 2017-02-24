# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Recipient.destroy_all
# Event.destroy_all
# RecipientEvent.destroy_all

# 
# Recipient.create(first_name: "Pam", last_name: "Quoss", address_line_1: "3448 Old Military Rd", address_line_2: "", zip_code: "97502", city: "Central Point", state: "OR", country: "USA", user: User.first)
#
# event = [Event.create(calendar_date: 3.days.from_now.to_date, occasion: "Birthday", recurring_yearly: true),
# Event.create(calendar_date: 20.days.from_now.to_date, occasion: "Mother's Day", recurring_yearly: true),
# Event.create(calendar_date: 50.days.from_now.to_date, occasion: "Graduation", recurring_yearly: false)]

recipientEvent = [RecipientEvent.create(recipient_id:1, event_id:11),
RecipientEvent.create(recipient_id:1, event_id:10),
RecipientEvent.create(recipient_id:1, event_id:12)]
