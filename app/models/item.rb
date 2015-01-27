class Item < ActiveRecord::Base
	has_many :rfid
	accepts_nested_attributes_for :rfid
	validates :inventory, presence: true

	def self.searchName(query)
		find_by_sql("SELECT * FROM items WHERE items.name like '%#{query}%'")
	end
	def self.searchColor(color)
		find_by_sql("SELECT * FROM items JOIN rfids ON rfids.upc = items.upc WHERE rfids.color like '%#{color}%'")
	end
	def self.searchRating(rating)
		find_by_sql("SELECT * FROM items WHERE items.rating like '%#{rating}%'")
	end
	def self.searchGender(gender)
		find_by_sql("SELECT * FROM items WHERE items.gender like '%#{gender}%'")
	end
	def self.searchPrice(price)
		find_by_sql("SELECT * FROM items WHERE items.price like '%#{price}%'")
	end
	def self.searchSize(size)
		find_by_sql("SELECT * FROM items JOIN rfids ON rfids.upc = items.upc WHERE rfids.size like '%#{size}%'")
	end
	def self.searchManufacturer(manufacturer)
		find_by_sql("SELECT * FROM items WHERE items.manufacturer like '%#{manufacturer}%'")
	end
	def self.searchCategory(category)
		find_by_sql("SELECT * FROM items WHERE items.category like '%#{category}%'")
	end
	def self.searchSubCategory(subcategory)
		find_by_sql("SELECT * FROM items WHERE items.subcategory like '%#{subcategory}%'")
	end
	def self.searchSubSubCategory(subsubcategory)
		find_by_sql("SELECT * FROM items WHERE items.subsubcategory like '%#{subsubcategory}%'")
	end
end
