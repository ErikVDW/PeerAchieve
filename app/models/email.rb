class Email < ActiveRecord::Base
  validates_length_of :first_name, :maximum => 25, :minimum => 2
  validates_length_of :last_name, :maximum => 30, :minimum => 2
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates_length_of :message, :maximum => 500, :minimum => 3
end
