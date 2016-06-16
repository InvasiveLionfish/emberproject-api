# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

donor = Donor.create(email: "bob@bob.com", name: "Bob's Burgers", address: "Ocean Avenue", description: "Meh", contact_info: "Linda")

donor2 = Donor.create(email: "rob@rob.com", name: "Rob's Burgers", address: "Seaside Avenue", description: "Bleh", contact_info: "Tina")

recipient = Recipient.create(email: "archer@isis.com", name: "Archer", description: "Hate the KGB", contact_info: "Mother")

recipient2 = Recipient.create(email: "mother@isis.com", name: "Mother", description: "Hate my son")

donor.listings << Listing.create(pickup_time: "21:00", description: "Pickup my food")

donor2.listings << Listing.create(pickup_time: "22:00", description: "Pickup all of my food")

recipient.pickups << Pickup.create(recipient_id: 1, listing_id: 1)

recipient2.pickups << Pickup.create(recipient_id: 2, listing_id: 2)

