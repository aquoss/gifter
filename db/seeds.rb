# User.destroy_all
# Recipient.destroy_all
# Event.destroy_all
# Gift.destroy_all


recipient = Recipient.create(first_name: "Pam", last_name: "Quoss", address_line_1: "3448 Old Military Rd", address_line_2: "", zip_code: "97502", city: "Central Point", state: "OR", country: "USA", user: User.first)

events = [Event.create(calendar_date: 3.days.from_now.to_date, occasion: "Birthday", recurring_yearly: true),
Event.create(calendar_date: 20.days.from_now.to_date, occasion: "Mother's Day", recurring_yearly: true),
Event.create(calendar_date: 50.days.from_now.to_date, occasion: "Graduation", recurring_yearly: false)]

recipient.events = events

Gift.create(item:"Cooking Book", price:19.99)
Gift.create(item:"Bean Bag Chair", price:150.5)
Gift.create(item:"Movie Ticket", price:12.99)

Order.create(event_id:4, gift_id:Gift.first.id, tracking_number:"fdh23748o234", confirmed_delivery:false)

Trait.create(reading:true, film:true, cooking:true, art:true, electronics:false, sports:false, fashion:true, gaming:false, music:true, travel:true, outdoor_activities:false, age:"adult", female:true, male:false, cheapest_price:false, low_price:false, med_price:true, high_price:true, traitable_type:Recipient, traitable_id:2)
