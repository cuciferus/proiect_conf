class Pacient < ActiveRecord::Base
  has_many :protocols
  has_many :diabets
  has_many :hemodializas
  accepts_nested_attributes_for :protocols, :allow_destroy => true
  validates_uniqueness_of :cnp, :message => "Ai deja un pacient cu acest CNP"
end
