class RemoveBananasFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :bananas
  end
end
