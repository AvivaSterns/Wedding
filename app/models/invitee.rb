class Invitee < ActiveRecord::Base
  has_many :guests
end
