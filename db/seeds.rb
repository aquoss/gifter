

# Order.destroy_all
# Trait.destroy_all
# Gift.destroy_all
# Event.destroy_all
# Recipient.destroy_all
# User.destroy_all



# recipient = Recipient.create(first_name: "Pam", last_name: "Quoss", address_line_1: "3448 Old Military Rd", address_line_2: "", zip_code: "97502", city: "Central Point", state: "OR", country: "USA", user: User.first)

# events = [Event.create(calendar_date: 3.days.from_now.to_date, occasion: "Birthday", recurring_yearly: true),
# Event.create(calendar_date: 20.days.from_now.to_date, occasion: "Mother's Day", recurring_yearly: true),
# Event.create(calendar_date: 50.days.from_now.to_date, occasion: "Graduation", recurring_yearly: false)]
#
# recipient.events = events

# Order.create(event_id:4, gift_id:Gift.first.id, tracking_number:"fdh23748o234", confirmed_delivery:false)

# Trait.create(reading:true, film:true, cooking:true, art:true, electronics:false, sports:false, fashion:true, gaming:false, music:true, travel:true, outdoor_activities:false, age:"adult", female:true, male:false, cheapest_price:false, low_price:false, med_price:true, high_price:true, traitable_type:"Recipient", traitable_id:1)

# gift_data = []
# 40.times do
#   gift_data << {
#     item: FFaker::Product.product_name,
#     price: rand(5..120)
#   }
# end
# Gift.create(gift_data)


# (1..40).each do |num|
#   Trait.create(
#     reading: FFaker::Boolean.random,
#     film: FFaker::Boolean.random,
#     cooking: FFaker::Boolean.random,
#     art: FFaker::Boolean.random,
#     electronics: FFaker::Boolean.random,
#     sports: FFaker::Boolean.random,
#     fashion: FFaker::Boolean.random,
#     gaming: FFaker::Boolean.random,
#     music: FFaker::Boolean.random,
#     travel: FFaker::Boolean.random,
#     outdoor_activities: FFaker::Boolean.random,
#     age: ["infant", "child", "teenager", "young_adult", "adult", "senior"].sample,
#     female: FFaker::Boolean.random,
#     male: FFaker::Boolean.random,
#     cheapest_price: FFaker::Boolean.random,
#     low_price: FFaker::Boolean.random,
#     med_price: FFaker::Boolean.random,
#     high_price: FFaker::Boolean.random,
#     traitable_type: "Gift",
#     traitable_id: num
#   )
# end

Gift.create(item:"Days Old Mug", price:16.99, image:"http://cimages.prvd.com/is/image/ProvideCommerce/PCR13_00000014S134_ENVIRO_SQ?$PCRProductImage$&wid=446")
Trait.create(reading:true, film:false, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"senior", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:1)

Gift.create(item:"Chocolate Birthday Bliss Box", price:59.99, image:"http://cimages.prvd.com/is/image/ProvideCommerce/GFB_16_CNDY20006X_W1_SQ?$PCRProductImage$&wid=446")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:false, low_price:false, med_price:true, high_price:true, traitable_type: "Gift", traitable_id:2)

Gift.create(item:"Mermaid Tail Blanket", price:19.99, image:"http://cdn.shopify.com/s/files/1/0193/2308/products/Blue_Mermaid_2048x2048.jpg?v=1481406670")
Trait.create(reading:true, film:true, cooking:false, art:true, electronics:false, sports:false, fashion:true, gaming:false, music:false, travel:false, outdoor_activities:false, age:"teenager", female:true, male:false, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:3)

Gift.create(item:"Flavor Infuser Water Bottle", price:15.00, image:"http://gogreentravelgreen.com/wp-content/uploads/2014/05/Fruit-Infused-Water-Bottle.jpg")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:true, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:true, age:"adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:4)

Gift.create(item:"Cards Against Humanity", price:25.00, image:"https://images-na.ssl-images-amazon.com/images/I/81z8pwsHMnL._SL1500_.jpg")
Trait.create(reading:false, film:false, cooking:false, art:false, electronics:false, sports:false, fashion:false, gaming:true, music:false, travel:false, outdoor_activities:false, age:"young_adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:5)

Gift.create(item:"Arrival (Blu-ray)", price:19.99, image:"http://images4.static-bluray.com/movies/covers/164834_front.jpg")
Trait.create(reading:false, film:true, cooking:false, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:true, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:6)

Gift.create(item:"Milk and Honey Paperback", price:8.99, image:"http://images.gr-assets.com/books/1415575802l/23513349.jpg")
Trait.create(reading:true, film:false, cooking:false, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"young_adult", female:true, male:true, cheapest_price:true, low_price:false, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:7)

Gift.create(item:"Bose Soundlink Mini Bluetooth Speaker", price:159.99, image:"https://images-na.ssl-images-amazon.com/images/G/01/brands/bose/SoundLink_Mini-370w.jpg")
Trait.create(reading:false, film:false, cooking:false, art:false, electronics:true, sports:false, fashion:false, gaming:false, music:true, travel:false, outdoor_activities:true, age:"adult", female:true, male:true, cheapest_price:false, low_price:false, med_price:false, high_price:true, traitable_type: "Gift", traitable_id:8)

Gift.create(item:"Baseball Game", price:50.00, image:"http://www.uncommongoods.com/images/items/23500/23564_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:false, electronics:false, sports:true, fashion:false, gaming:true, music:false, travel:false, outdoor_activities:true, age:"adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:true, traitable_type: "Gift", traitable_id:11)

Gift.create(item:"Golfers BBQ Set", price:28.00, image:"http://www.uncommongoods.com/images/items/15200/15232_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:true, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:true, age:"adult", female:false, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:12)

Gift.create(item:"Soccer Mug with a Goal", price:24.00, image:"http://www.uncommongoods.com/images/items/26300/26387_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:true, art:true, electronics:false, sports:true, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:true, age:"child", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:13)

Gift.create(item:"Record Clock", price:38.00, image:"http://www.uncommongoods.com/images/items/19700/19765_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:true, sports:false, fashion:false, gaming:false, music:true, travel:false, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:14)

Gift.create(item:"Wood Acoustic Phone Amp", price:100.00, image:"http://www.uncommongoods.com/images/items/42200/42230_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:true, sports:false, fashion:false, gaming:false, music:true, travel:false, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:false, low_price:false, med_price:false, high_price:true, traitable_type: "Gift", traitable_id:15)

Gift.create(item:"DJ Cat Scratching Pad", price:35.00, image:"http://www.uncommongoods.com/product/dj-cat-scratching-pad")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"young_adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:16)

Gift.create(item:"Couch Arm Table", price:128.00, image:"http://www.uncommongoods.com/images/items/43000/43012_1_360px.jpg")
Trait.create(reading:true, film:true, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"senior", female:true, male:true, cheapest_price:false, low_price:false, med_price:false, high_price:true, traitable_type: "Gift", traitable_id:17)

Gift.create(item:"DIY Terrarium Kit", price:55.00, image:"http://www.uncommongoods.com/images/items/25600/25682_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:true, outdoor_activities:true, age:"adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:18)

Gift.create(item:"Wanderlust Cross Stitch Map", price:35.00, image:"http://www.uncommongoods.com/images/items/42400/42423_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:true, outdoor_activities:false, age:"young_adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:19)

Gift.create(item:"Mini Mobile Kit", price:64.00, image:"http://www.uncommongoods.com/images/items/43200/43207_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"teenager", female:true, male:true, cheapest_price:false, low_price:false, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:20)

Gift.create(item:"Electric Light Blocks", price:35.00, image:"http://www.uncommongoods.com/images/items/26100/26155_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:true, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"child", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:21)

Gift.create(item:"My Cinema Light Box", price:45.00, image:"http://www.uncommongoods.com/images/items/41200/41266_1_360px.jpg")
Trait.create(reading:true, film:true, cooking:false, art:true, electronics:true, sports:false, fashion:false, gaming:false, music:true, travel:false, outdoor_activities:false, age:"young_adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:22)

Gift.create(item:"Smartphone Projector", price:28.00, image:"http://www.uncommongoods.com/images/items/42300/42389_1_360px.jpg")
Trait.create(reading:false, film:true, cooking:false, art:false, electronics:true, sports:true, fashion:false, gaming:true, music:false, travel:false, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:23)

Gift.create(item:"Banned Books Morph Mug", price:12.00, image:"http://www.uncommongoods.com/images/items/40500/40547_1_360px.jpg")
Trait.create(reading:true, film:true, cooking:true, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"senior", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:24)

Gift.create(item:"Foodie Dice", price:24.00, image:"http://www.uncommongoods.com/images/items/25300/25386_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:true, music:false, travel:false, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:25)

Gift.create(item:"Picnic Backpack", price:48.00, image:"http://www.uncommongoods.com/images/items/14000/14065_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:true, outdoor_activities:true, age:"adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:26)

Gift.create(item:"Cross Country Keepsake Board", price:56.00, image:"http://www.uncommongoods.com/images/items/41600/41683_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:true, outdoor_activities:true, age:"young_adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:true, traitable_type: "Gift", traitable_id:27)

Gift.create(item:"45 Second Omelet Maker", price:25.00, image:"http://www.uncommongoods.com/images/items/25100/25101_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"adult", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:28)

Gift.create(item:"Prism Light", price:30.00, image:"http://www.uncommongoods.com/images/items/21100/21145_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:true, sports:false, fashion:false, gaming:false, music:false, travel:false, outdoor_activities:false, age:"teenager", female:true, male:true, cheapest_price:true, low_price:true, med_price:false, high_price:false, traitable_type: "Gift", traitable_id:29)

Gift.create(item:"Heavy Metal Rock Band", price:48.00, image:"http://www.uncommongoods.com/images/items/24900/24984_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:false, art:true, electronics:false, sports:false, fashion:false, gaming:false, music:true, travel:false, outdoor_activities:false, age:"teenager", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:30)

Gift.create(item:"Travel Cooking Essentails Kit", price:38.99, image:"http://www.uncommongoods.com/images/items/43200/43268_1_360px.jpg")
Trait.create(reading:false, film:false, cooking:true, art:false, electronics:false, sports:false, fashion:false, gaming:false, music:false, travel:true, outdoor_activities:true, age:"adult", female:true, male:true, cheapest_price:false, low_price:true, med_price:true, high_price:false, traitable_type: "Gift", traitable_id:31)
