class Pacient < ActiveRecord::Base
  has_many :protocols
  has_many :diabets
  has_many :hemodializas
  has_many :bcrs
  has_many :capds
  accepts_nested_attributes_for :protocols, :allow_destroy => true
  validates_uniqueness_of :cnp, :message => "Ai deja un pacient cu acest CNP"
  def last_protocol
    #de mutat in controller asa cum scrie in note-mirc
    unless self.protocols.last.nil?
      @protocols = self.protocols.last
    end
  end
end
