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

# recipientEvent = [RecipientEvent.create(recipient_id:1, event_id:11),
# RecipientEvent.create(recipient_id:1, event_id:10),
# RecipientEvent.create(recipient_id:1, event_id:12)]

# Gift.create(item:"Cooking Book", price:19.99, ordered:true, tracking_number:"E3247i4o33", confirmed_delivery:false)
# Gift.create(item:"Bean Bag Chair", price:150.5, ordered:true, tracking_number:"D335465763", confirmed_delivery:true)
# Gift.create(item:"Movie Ticket", price:12.99, ordered:false, tracking_number:"T32423434453", confirmed_delivery:false)
