# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

donor = User.create(email: "bob@bob.com", name: "Bob's Burgers", address: "Ocean Avenue", description: "Meh", phone_number: "999-999-9999", type: "Donor", password: "password")

donor2 = User.create(email: "rob@rob.com", name: "Rob's Burgers", address: "Seaside Avenue", description: "Bleh", phone_number: "777-777-7777", type: "Donor", password: "password")

donor3 = User.create(email: "robio@rob.com", name: "Seaside Delights", address: "977 Jefferson Avenue", description: "Fish", phone_number: "734-777-7777", type: "Donor", password: "password")

donor4 = User.create(email: "adams@apples.com", name: "Adam's Apples", address: "Madison Avenue", description: "Pies and Pastries", phone_number: "722-777-7777", type: "Donor", password: "password")

donor5 = User.create(email: "fishnchips@pub.com", name: "The Irishman", address: "977 Jefferson Avenue", description: "Fish n Chips", phone_number: "722-777-7777", type: "Donor", password: "password")

recipient = User.create(email: "archer@isis.com", name: "Archer", description: "Hate the KGB", address: "NYC", phone_number: "666-666-6666", type: "Recipient", password: "password")

recipient2 = User.create(email: "mother@isis.com", name: "Mother", description: "Hate my son", address: "ISIS", phone_number: "123-123-1233", type: "Recipient", password: "password")

donor.listings << Listing.create(pickup_time: "21:00", description: "Pickup my food")

donor2.listings << Listing.create(pickup_time: "22:00", description: "Pickup all of my food")

donor3.listings << Listing.create(pickup_time: "17:10", description: "We've got fresh fish. But it won't be fresh for much longer if someone doesn't pick it up.")

donor4.listings << Listing.create(pickup_time: "18:10", description: "NYC's best pies. We would love to share with everyone. Have some truffles that would go to waste, would prefer not to throw it out. Might have some cranberry pies leftover too. Good for 10.")

donor5.listings << Listing.create(pickup_time: "21:10", description: "We've got fish n chips. Better than os other wankers. Can feed about twenty. Be here at 9 sharp.")

recipient.pickups << Pickup.create(recipient_id: 1, listing_id: 1)

recipient2.pickups << Pickup.create(recipient_id: 2, listing_id: 2)
