class CreateGoalComments < ActiveRecord::Migration
  def change
    create_table :goal_comments do |t|
      t.text :content
      t.belongs_to :Goal, index: true

      t.timestamps null: false
    end
  end
end
