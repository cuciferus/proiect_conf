class Pacient < ActiveRecord::Base
  has_many :protocols
  accepts_nested_attributes_for :protocols, :allow_destroy => true
end
