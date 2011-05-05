# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Centru.delete_all
#asta nu merge, ideea pare interesanta dar nu cred ca pentru proiectu asta
#Pacient.create do |pacient|
  pacient.!(:nume=>'levente', :prenume=>'Andronic', :cnp=> 1880909100199, :data_integrarii => '05/05/2020')
  pacient.protocols.create do |protocol|
    protocol.create(:data=> '05/05/2020', :centru => 's', :program => 'hd')
  end
end
#asa merge:
pacient = Pacient.create!(:nume=>'Georgescu', :prenume=>'Adrian', :cnp=> 1800909100199, :data_integrarii => 05/05/2020)
pacient.protocols.create(:data=> '05/05/2020', :centru => 's', :program => 'hd')

Centru.create(:nume => 'Sibiu')
Centru.create(:nume => 'Tg Jiu')
Centru.create(:nume => 'Roman')
Centru.create(:nume => 'Bucuresti Industriilor')
Centru.create(:nume => 'Bucuresti Semanatoarea')
Centru.create(:nume => 'Odorheiu Secuiesc')
Centru.create(:nume => 'Miercurea Ciuc')
Centru.create(:nume => 'Bistrita')

