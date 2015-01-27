class CreateRfids < ActiveRecord::Migration
  #============================== Rob ==============================
  def change
    create_table :rfids, id: false do |t|
      t.private_key :serialnumber
      t.bigint :upc
      t.text :location_specifc
      t.integer :location_general
      t.text :color
      t.text :size
      t.timestamps null: false
    end
  end
  #============================== Rob ==============================
end
