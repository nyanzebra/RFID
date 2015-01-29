class ItemsController < ApplicationController
	#============================== Rob ==============================
	helper_method :location_specific, :is_bought, :is_onsale, :gender, :find_quantity

	#============================= Calls =============================
	def edit
		@item = Item.find(params[:id])
	end
	def show
		@item = Item.find(params[:id])
	end
	def index
		@categories = Item.find_by_sql("SELECT DISTINCT category FROM items ORDER BY category")
		if params[:search]
			@items = Item.search(params[:search])
			@subcategories = Item.find_by_sql("SELECT DISTINCT subcategory FROM items WHERE category = '#{params[:search]}' ORDER BY subcategory")
		else
			@items = Item.all
		end
	end
	def update
		@item = Item.find(params[:id])
		if @item.update(item_params)
			redirect_to @item_params
		else 
			render 'edit'
		end
	end
	def destroy
		@item = Item.find(params[:di])
		@item.destroy
		redirect_to items_path
	end
	#============================ Helper ============================
	def is_onsale(onsale)
		if onsale
			"On Sale"
		else
			""
		end
	end
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
	def gender(gender)
		if gender
			"F"
		else 
			"M"
		end
	end
	private
	def item_params
		params.require(:item).permit(:name, :manufacturer, :description, :gender, :color, :size, :location, :localenum)
	end
	#============================== End ==============================
end
