class AddFirstAndLastNameAndRemoveNameFromEmails < ActiveRecord::Migration
  def change
    add_column :emails, :first_name, :string
    add_column :emails, :last_name, :string
    remove_column :emails, :name
  end
end
