class Protocol < ActiveRecord::Base
  belongs_to :pacient
  has_many :hemodializas
  CENTRE = [
    ['Sibiu', 's'],
    ['Bucuresti semanatoarea','sema'],
    ['Bucuresti industriilor','industriilor'],
    ['Ordoheiu Secuiesc','ordohei'],
    ['Targu jiu','tgjiu'],
    ['Bistrita','bistrita'],
    ['Miercurea Ciuc','mciuc']
  ]
  PROGRAME = [
    ['Hemodializa', 'hd'],
    ['Dializa Peritoneala','capd'],
    ['Predializa','bcr']
    ]

  validates_inclusion_of :centru, :in =>
    CENTRE.map {|disp, value| value} 
  validates_inclusion_of :program, :in =>
    PROGRAME.map {|disp, value| value}
end
