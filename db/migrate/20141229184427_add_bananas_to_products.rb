class AddBananasToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bananas, :string
    add_column :products, :string, :string
  end
end
