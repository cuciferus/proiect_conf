# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
params = {:pacient => {:nume => 'Georgescu', :prenume=>'Maria', :cnp=>1820912200121, :data_integrarii=> '01/05/2011',
          :pacient_protocol_attributes => {
            :data => '01/05/2011', :centru => 'Sibiu', :program => 'hd'}
}}
#Pacient.create!(params[:pacient])


Pacient.create(:nume => 'Ionescu', :prenume => 'Andrei', :cnp => 21209210009, :data_integrarii => '09/09/1999')

Centru.delete_all
[{"Georgescu", "Camelia", 2871208100122, 05/05/2011}].each do |pacient|
  Pacient.create(:pacient)
end

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

