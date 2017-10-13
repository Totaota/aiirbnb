class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  
  has_one :payement
  accepts_nested_attributes_for :payment
end
