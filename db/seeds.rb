# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rfid_list =
[
	["me", "Green Shirt", "shirt", 2, "green", "M"], # id 1
	["me", "Black Pants", "pants", 1, "black", "M"], # id 2
	["me", "Red Shirt", "shirt", 2, "red", "M"],     # id 3
	["me", "Gree Pants", "pants", 0, "green", "M"],  # id 4
	["me", "Cool Toy", "toy", 2, "blue", ""]         # id 5
]

item_list = 
[
	[true, "Shirts Area", 1, 1], # id 1
	[false, "Pants Area", 2, 2], # id 2
	[false, "Shirts Area",2, 3], # id 3
	[true, "Pants Area",3, 4],   # id 4
	[false, "Toy Area", 2, 5]    # id 5
]

inventory_list =
[
	[10, 1], # id 1
	[1, 2],  # id 2
	[5, 3],  # id 3
	[7, 4],  # id 4
	[8, 5]   # id 5
]

rfid_list.each do |manufacturer, name, description, gender, color, size|	
	Rfid.create(manufacturer: manufacturer, name: name, description: description, gender: gender, color: color, size: size)
end

item_list.each do |onsale, location, localenum, rfid_id|
	Item.create(onsale: onsale, location: location, localenum: localenum, rfid_id: rfid_id)
end

inventory_list.each do |quantity, item_id|
	Inventory.create(quantity: quantity, item_id: item_id)
end
