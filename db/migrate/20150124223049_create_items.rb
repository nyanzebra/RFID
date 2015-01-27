class CreateItems < ActiveRecord::Migration
	#============================== Rob ==============================
  	def change
	    create_table :items , id: false do |t|
	    	t.private_key :item_id
			t.boolean :onsale
			t.text :name
			t.text :description
			t.text :manufacturer
			t.text :category
			t.text :subcategory
			t.text :subsubcategory 
			t.integer :gender
			t.integer :rating
			t.integer :price
			t.integer :votes
			t.bigint :upc, null: false, index: true
			t.timestamps null: false
	  	end
    end
    #============================== End ==============================
end
