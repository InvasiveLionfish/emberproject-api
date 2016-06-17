# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

donor = User.create(email: "bob@bob.com", name: "Bob's Burgers", address: "Ocean Avenue", description: "Meh", phone_number: "999-999-9999", type: "Donor")

donor2 = User.create(email: "rob@rob.com", name: "Rob's Burgers", address: "Seaside Avenue", description: "Bleh", phone_number: "777-777-7777", type: "Donor")

recipient = User.create(email: "archer@isis.com", name: "Archer", description: "Hate the KGB", address: "NYC", phone_number: "666-666-6666", type: "Recipient")

recipient2 = User.create(email: "mother@isis.com", name: "Mother", description: "Hate my son", address: "ISIS", phone_number: "123-123-1233", type: "Recipient")

donor.listings << Listing.create(pickup_time: "21:00", description: "Pickup my food")

donor2.listings << Listing.create(pickup_time: "22:00", description: "Pickup all of my food")

recipient.pickups << Pickup.create(recipient_id: 1, listing_id: 1)

recipient2.pickups << Pickup.create(recipient_id: 2, listing_id: 2)
