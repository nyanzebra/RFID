class CreateRfids < ActiveRecord::Migration
  #============================== Rob ==============================
  def change
    create_table :rfids do |t|
      #t.integer :upc_fk, unique: true, index: true
      t.text :location_specific
      t.integer :location_general
      t.text :color
      t.text :size
      t.timestamps null: false
      t.integer :item_id
      #t.references :items, index: true
    end
    #add_column :rfids, :item_id, :integer
  end
  #============================== Rob ==============================
end
