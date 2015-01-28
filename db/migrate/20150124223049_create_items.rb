class CreateItems < ActiveRecord::Migration
	#============================== Rob ==============================
  	def change
	    create_table :items do |t|
			t.boolean :onsale
			t.text :name
			t.text :description
			t.text :manufacturer
			t.text :category
			t.text :subcategory
			t.text :subsubcategory 
			t.integer :gender
			t.integer :price
			t.timestamps null: false
	  	end
    end
    #============================== End ==============================
end
