class ItemsController < ApplicationController
	#============================== Rob ==============================
	helper_method :location_specific, :is_bought, :is_onsale, :gender, :find_quantity

	#============================= Calls =============================
	def edit
		@item = Item.find(params[:item_id])
	end
	def show
		@item = Item.find(params[:item_id])
	end
	def index
		if params[:search]
			@items = Item.search(params[:search])
		elsif params[:rating]
			@items = Item.search(params[:rating])
		elsif params[:price]
			@items = Item.search(params[:price])
		elsif params[:color]
			@items = Item.search(params[:color])
		elsif params[:size]
			@items = Item.search(params[:size])
		elsif params[:manufacturer]
			@items = Item.search(params[:manufacturer])
		elsif params[:gender]
			@items = Item.search(params[:gender])
		elsif params[:category]	
			@items = Item.search(params[:category])			
		elsif params[:subcategory]			
			@items = Item.search(params[:subcategory])
		elsif params[:subsubcategory]
			@items = Item.search(params[:subsubcategory])
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
		@item = Item.find(params[:id])
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
