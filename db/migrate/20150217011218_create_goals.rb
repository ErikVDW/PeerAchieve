class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.text :content
      t.boolean :achieved_status
      
      t.belongs_to :User, index: true
      t.length_of_streak integer, default: 0
      
      t.timestamps null: false
    end
  end
end
