class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :string
    add_column :products, :decimal, :string
  end
end
