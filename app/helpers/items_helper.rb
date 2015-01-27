module ItemsHelper
	#============================== Rob ==============================
	def location_specific(localenum)
		case localenum
		when 0
			"Gone"
		when 1
			"Storage"
		when 2
			"In Store"
		when 3
			"Display"
		end
	end
	def is_onsale(onsale)
		if onsale
			"On Sale"
		else
			""
		end
	end
	def gender(gender)
		if gender
			"F"
		else 
			"M"
		end
	end
	#============================== End ==============================
end
