class RemoveImageFromBlogsTable < ActiveRecord::Migration
  def change
  	remove_column :blogs, :image
  end
end
