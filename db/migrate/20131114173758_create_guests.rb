class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
    	t.string :name
    	t.string :phone
    	t.string	:email
    	t.text :comments
      t.timestamps
    end
  end
end
