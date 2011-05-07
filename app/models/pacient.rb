class Pacient < ActiveRecord::Base
  has_many :protocols, :dependent => :destroy
  has_many :diabets
  has_many :hemodializas, :dependent => :destroy
  has_many :bcrs, :dependent => :destroy
  has_many :capds, :dependent => :destroy
  accepts_nested_attributes_for :protocols, :allow_destroy => true
  validates_uniqueness_of :cnp, :message => "Ai deja un pacient cu acest CNP"
  def last_protocol
    unless self.protocols.last.nil?
      @protocols = self.protocols.last
    end
  end
end
