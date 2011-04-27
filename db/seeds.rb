# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Centru.delete_all

Centru.create(:nume => 'Sibiu')
Centru.create(:nume => 'Tg Jiu')
Centru.create(:nume => 'Roman')
Centru.create(:nume => 'Bucuresti Industriilor')
Centru.create(:nume => 'Bucuresti Semanatoarea')
Centru.create(:nume => 'Odorheiu Secuiesc')
Centru.create(:nume => 'Miercurea Ciuc')
Centru.create(:nume => 'Bistrita')

