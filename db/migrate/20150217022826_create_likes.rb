class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      
      t.boolean :liked_status
      
      t.references :likeable, polymorphic: true, index: true
       
      t.timestamps null: false
      
    end
  end
end
