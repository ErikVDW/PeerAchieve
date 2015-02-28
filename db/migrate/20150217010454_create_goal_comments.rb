class CreateGoalComments < ActiveRecord::Migration
  def change
    create_table :goal_comments do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :goal, index: true+

      t.timestamps null: false
    end
  end
end
