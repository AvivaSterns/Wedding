class Rsvp < ActiveRecord::Base
  has_no_table
  column :first_name, :string
  column :last_name, :string
  column :email, :string
  column :plus_one?, :string
  column :guest_name, :string
  column :message_for_the_bride_and_groom, :string
  
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :plus_one?
  validates_presence_of :guest_name
  validates_presence_of :message_for_the_bride_and_groom
  validates_format_of :email,
    :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
   validates_length_of :message_for_the_bride_and_groom, :maximum => 500
  
end