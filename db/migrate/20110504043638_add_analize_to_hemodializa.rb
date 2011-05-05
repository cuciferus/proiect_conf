class AddAnalizeToHemodializa < ActiveRecord::Migration
  def self.up
    add_column :hemodializas, :hemoglobina, :float
    add_column :hemodializas, :hematocrit, :float
    add_column :hemodializas, :hematii, :float
    add_column :hemodializas, :leucocite, :float
    add_column :hemodializas, :trombocite, :float
    add_column :hemodializas, :uree, :float
    add_column :hemodializas, :creatinina, :float
    add_column :hemodializas, :sodiu, :float
    add_column :hemodializas, :potasiu, :float
    add_column :hemodializas, :tgo, :float
    add_column :hemodializas, :tgp, :float
    add_column :hemodializas, :glicemie, :float
    add_column :hemodializas, :calciu, :float
    add_column :hemodializas, :fosfor, :float
    add_column :hemodializas, :fier_seric, :float
    add_column :hemodializas, :colesterol, :float
    add_column :hemodializas, :lipide, :float
    add_column :hemodializas, :trigliceride, :float
    add_column :hemodializas, :ctlf, :float
    add_column :hemodializas, :inr, :float
    add_column :hemodializas, :aptt, :float
    add_column :hemodializas, :ap, :float
    add_column :hemodializas, :fibrinogen, :float
    add_column :hemodializas, :tquick, :float
    add_column :hemodializas, :proteine_serice, :float
    add_column :hemodializas, :hemoglobina_glicozilata, :float
    add_column :hemodializas, :saturarea_transferinei, :float
    add_column :hemodializas, :pcr, :float
    add_column :hemodializas, :urr, :float
    add_column :hemodializas, :ektv, :float
    add_column :hemodializas, :fosfataza_alcalina, :float
    add_column :hemodializas, :albumina, :float
    add_column :hemodializas, :alfa1, :float
    add_column :hemodializas, :alfa2, :float
    add_column :hemodializas, :beta, :float
    add_column :hemodializas, :gamma, :float
    add_column :hemodializas, :aghbs, :float
    add_column :hemodializas, :achbs, :float
    add_column :hemodializas, :achcv, :float
    add_column :hemodializas, :achiv, :float
    add_column :hemodializas, :pth, :float
    add_column :hemodializas, :greutate, :float
    add_column :hemodializas, :sga, :integer
    add_column :hemodializas, :tas, :integer
    add_column :hemodializas, :tad, :integer
    add_column :hemodializas, :indice_b_mortalitate, :float
    add_column :hemodializas, :spitalizare, :float
    add_column :hemodializas, :vit_d, :integer
    add_column :hemodializas, :binder_fosfor, :integer
    add_column :hemodializas, :epo_saptamana, :integer
    add_column :hemodializas, :durata_hd, :integer
    add_column :hemodializas, :heparina_dializa, :float
  end

  def self.down
    remove_column :hemodializas, :heparina_dializa
    remove_column :hemodializas, :durata_hd
    remove_column :hemodializas, :epo_saptamana
    remove_column :hemodializas, :binder_fosfor
    remove_column :hemodializas, :vit_d
    remove_column :hemodializas, :spitalizare
    remove_column :hemodializas, :indice_b_mortalitate
    remove_column :hemodializas, :tad
    remove_column :hemodializas, :tas
    remove_column :hemodializas, :sga
    remove_column :hemodializas, :greutate
    remove_column :hemodializas, :pth
    remove_column :hemodializas, :achiv
    remove_column :hemodializas, :achcv
    remove_column :hemodializas, :achbs
    remove_column :hemodializas, :aghbs
    remove_column :hemodializas, :gamma
    remove_column :hemodializas, :beta
    remove_column :hemodializas, :alfa2
    remove_column :hemodializas, :alfa1
    remove_column :hemodializas, :albumina
    remove_column :hemodializas, :fosfataza_alcalina
    remove_column :hemodializas, :ektv
    remove_column :hemodializas, :urr
    remove_column :hemodializas, :pcr
    remove_column :hemodializas, :saturarea_transferinei
    remove_column :hemodializas, :hemoglobina_glicozilata
    remove_column :hemodializas, :proteine_serice
    remove_column :hemodializas, :tquick
    remove_column :hemodializas, :fibrinogen
    remove_column :hemodializas, :ap
    remove_column :hemodializas, :aptt
    remove_column :hemodializas, :inr
    remove_column :hemodializas, :ctlf
    remove_column :hemodializas, :trigliceride
    remove_column :hemodializas, :lipide
    remove_column :hemodializas, :colesterol
    remove_column :hemodializas, :fier_seric
    remove_column :hemodializas, :fosfor
    remove_column :hemodializas, :calciu
    remove_column :hemodializas, :glicemie
    remove_column :hemodializas, :tgp
    remove_column :hemodializas, :tgo
    remove_column :hemodializas, :potasiu
    remove_column :hemodializas, :sodiu
    remove_column :hemodializas, :creatinina
    remove_column :hemodializas, :uree
    remove_column :hemodializas, :trombocite
    remove_column :hemodializas, :leucocite
    remove_column :hemodializas, :hematii
    remove_column :hemodializas, :hematocrit
    remove_column :hemodializas, :hemoglobina
  end
end
