

# User.destroy_all
# Recipient.destroy_all
# Event.destroy_all
Gift.destroy_all
Trait.destroy_all


# recipient = Recipient.create(first_name: "Pam", last_name: "Quoss", address_line_1: "3448 Old Military Rd", address_line_2: "", zip_code: "97502", city: "Central Point", state: "OR", country: "USA", user: User.first)

# events = [Event.create(calendar_date: 3.days.from_now.to_date, occasion: "Birthday", recurring_yearly: true),
# Event.create(calendar_date: 20.days.from_now.to_date, occasion: "Mother's Day", recurring_yearly: true),
# Event.create(calendar_date: 50.days.from_now.to_date, occasion: "Graduation", recurring_yearly: false)]
#
# recipient.events = events

# Gift.create(item:"Cooking Book", price:19.99)
# Gift.create(item:"Bean Bag Chair", price:150.5)
# Gift.create(item:"Movie Ticket", price:12.99)

# Order.create(event_id:4, gift_id:Gift.first.id, tracking_number:"fdh23748o234", confirmed_delivery:false)

# Trait.create(reading:true, film:true, cooking:true, art:true, electronics:false, sports:false, fashion:true, gaming:false, music:true, travel:true, outdoor_activities:false, age:"adult", female:true, male:false, cheapest_price:false, low_price:false, med_price:true, high_price:true, traitable_type:"Recipient", traitable_id:1)

gift_data = []
40.times do
  gift_data << {
    item: FFaker::Product.product_name,
    price: rand(5..120)
  }
end
Gift.create(gift_data)


(1..48).each do |num|
  Trait.create(
    reading: FFaker::Boolean.random,
    film: FFaker::Boolean.random,
    cooking: FFaker::Boolean.random,
    art: FFaker::Boolean.random,
    electronics: FFaker::Boolean.random,
    sports: FFaker::Boolean.random,
    fashion: FFaker::Boolean.random,
    gaming: FFaker::Boolean.random,
    music: FFaker::Boolean.random,
    travel: FFaker::Boolean.random,
    outdoor_activities: FFaker::Boolean.random,
    age: ["infant", "child", "teenager", "young_adult", "adult", "senior"].sample,
    female: FFaker::Boolean.random,
    male: FFaker::Boolean.random,
    cheapest_price: FFaker::Boolean.random,
    low_price: FFaker::Boolean.random,
    med_price: FFaker::Boolean.random,
    high_price: FFaker::Boolean.random,
    traitable_type: "Gift",
    traitable_id: num
  )
end

## careful, right now a gift can apply to multiple price ranges
