class Item < ActiveRecord::Base
	has_many :rfids

	def self.search(querytext = "", querynum = nil)
		#search = "%" + query + "%"
		text = "%" + querytext + "%"
		if querynum != nil
			find_by_sql(
				"SELECT *
				FROM items
				WHERE gender = #{querynum}
				OR price = #{querynum}"
				)
		else
			find_by_sql(
				"SELECT *
				FROM items 
				WHERE name LIKE '%#{querytext}%'
				OR manufacturer LIKE '%#{querytext}%' 
				OR category LIKE '%#{querytext}%'"
				)
		end
	end
end
