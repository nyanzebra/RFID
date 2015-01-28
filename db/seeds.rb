# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# location_general
# 0 = gone
# 1 = storage
# 2 = in store
# 3 = display

# gender
# 0 = f
# 1 = m
# 2 = u
# 3 >= don't care

item_list = 
[
	#id, onsale, name, description, manufacturer, category, subcategory, subsubcategory, gender, price
	[1, true, "Green Shirt", "shirt", "me", "clothing", "shirt", "tee", 1, 24],
	[2, false, "Blue Jeans", "pants", "me", "clothing", "pants", "jeans", 2, 30], 
	[3, false, "Red Shirt", "shirt", "you", "clothing", "shirt", "blouse", 0, 36], 
	[4, true, "TV", "something to do..", "you", "electronics", "tv", "" , 3, 100],  
	[5, false, "stuffed bunny", "cool toy", "me", "toys", "indoor", "", 3, 10]   
]

item_list.each do |id, onsale, name, description, manufacturer, category, subcategory, subsubcategory, gender, price|
	Item.create(id: id, onsale: onsale, name: name, description: description, manufacturer: manufacturer, category: category, subcategory: subcategory, subsubcategory: subsubcategory, gender:gender, price: price)
end

rfid_list =
[
	# id, item_id, location_specific, location_general, color, size
	[1, 1, "shirts area", 2, "green", "M"], # id 1
	[2, 2, "", 1, "blue", "M"], # id 2
	[3, 3, "shirts area", 3, "red", "S"],     # id 3
	[4, 4, "electronics area", 0, "black", "20"],  # id 4
	[5, 5, "toy area", 2, "brown", ""]         # id 5
]

rfid_list.each do |id, item_id, location_specific, location_general, color, size|	
	Rfid.create!(id: id, item_id: item_id, location_specific: location_specific, location_general: location_general, color: color, size: size)
end
