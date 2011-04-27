class Protocol < ActiveRecord::Base
  belongs_to :pacient
  CENTRE = [
    ['Sibiu', 's'],
    ['Bucuresti semanatoarea','sema'],
    ['Bucuresti industriilor','industriilor'],
    ['Ordoheiu Secuiesc','ordohei'],
    ['Targu jiu','tgjiu'],
    ['Bistrita','bistrita'],
    ['Miercurea Ciuc','mciuc']
  ]
  validates_inclusion_of :centru, :in =>
    CENTRE.map {|disp, value| value} 
end
