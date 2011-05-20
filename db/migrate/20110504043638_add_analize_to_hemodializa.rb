class AddAnalizeToHemodializa < ActiveRecord::Migration
  def self.up
    add_column :hemo_lunars, :hemoglobina, :float
    add_column :hemo_lunars, :hematocrit, :float
    add_column :hemo_lunars, :hematii, :float
    add_column :hemo_lunars, :leucocite, :float
    add_column :hemo_lunars, :trombocite, :float
    add_column :hemo_lunars, :uree, :float
    add_column :hemo_lunars, :creatinina, :float
    add_column :hemo_lunars, :sodiu, :float
    add_column :hemo_lunars, :potasiu, :float
    add_column :hemo_lunars, :tgo, :float
    add_column :hemo_lunars, :tgp, :float
    add_column :hemo_lunars, :glicemie, :float
    add_column :hemo_lunars, :calciu, :float
    add_column :hemo_lunars, :fosfor, :float
    add_column :hemo_lunars, :fier_seric, :float
    add_column :hemo_lunars, :colesterol, :float
    add_column :hemo_lunars, :lipide, :float
    add_column :hemo_lunars, :trigliceride, :float
    add_column :hemo_lunars, :ctlf, :float
    add_column :hemo_lunars, :inr, :float
    add_column :hemo_lunars, :aptt, :float
    add_column :hemo_lunars, :ap, :float
    add_column :hemo_lunars, :fibrinogen, :float
    add_column :hemo_lunars, :tquick, :float
    add_column :hemo_lunars, :proteine_serice, :float
    add_column :hemo_lunars, :hemoglobina_glicozilata, :float
    add_column :hemo_lunars, :saturarea_transferinei, :float
    add_column :hemo_lunars, :pcr, :float
    add_column :hemo_lunars, :urr, :float
    add_column :hemo_lunars, :ektv, :float
    add_column :hemo_lunars, :fosfataza_alcalina, :float
    add_column :hemo_lunars, :albumina, :float
    add_column :hemo_lunars, :alfa1, :float
    add_column :hemo_lunars, :alfa2, :float
    add_column :hemo_lunars, :beta, :float
    add_column :hemo_lunars, :gamma, :float
    add_column :hemo_lunars, :aghbs, :float
    add_column :hemo_lunars, :achbs, :float
    add_column :hemo_lunars, :achcv, :float
    add_column :hemo_lunars, :achiv, :float
    add_column :hemo_lunars, :pth, :float
    add_column :hemo_lunars, :greutate, :float
    add_column :hemo_lunars, :sga, :integer
    add_column :hemo_lunars, :tas, :integer
    add_column :hemo_lunars, :tad, :integer
    add_column :hemo_lunars, :indice_b_mortalitate, :float
    add_column :hemo_lunars, :spitalizare, :float
    add_column :hemo_lunars, :vit_d, :integer
    add_column :hemo_lunars, :binder_fosfor, :integer
    add_column :hemo_lunars, :epo_saptamana, :integer
    add_column :hemo_lunars, :durata_hd, :integer
    add_column :hemo_lunars, :heparina_dializa, :float
  end

  def self.down
    remove_column :hemo_lunars, :heparina_dializa
    remove_column :hemo_lunars, :durata_hd
    remove_column :hemo_lunars, :epo_saptamana
    remove_column :hemo_lunars, :binder_fosfor
    remove_column :hemo_lunars, :vit_d
    remove_column :hemo_lunars, :spitalizare
    remove_column :hemo_lunars, :indice_b_mortalitate
    remove_column :hemo_lunars, :tad
    remove_column :hemo_lunars, :tas
    remove_column :hemo_lunars, :sga
    remove_column :hemo_lunars, :greutate
    remove_column :hemo_lunars, :pth
    remove_column :hemo_lunars, :achiv
    remove_column :hemo_lunars, :achcv
    remove_column :hemo_lunars, :achbs
    remove_column :hemo_lunars, :aghbs
    remove_column :hemo_lunars, :gamma
    remove_column :hemo_lunars, :beta
    remove_column :hemo_lunars, :alfa2
    remove_column :hemo_lunars, :alfa1
    remove_column :hemo_lunars, :albumina
    remove_column :hemo_lunars, :fosfataza_alcalina
    remove_column :hemo_lunars, :ektv
    remove_column :hemo_lunars, :urr
    remove_column :hemo_lunars, :pcr
    remove_column :hemo_lunars, :saturarea_transferinei
    remove_column :hemo_lunars, :hemoglobina_glicozilata
    remove_column :hemo_lunars, :proteine_serice
    remove_column :hemo_lunars, :tquick
    remove_column :hemo_lunars, :fibrinogen
    remove_column :hemo_lunars, :ap
    remove_column :hemo_lunars, :aptt
    remove_column :hemo_lunars, :inr
    remove_column :hemo_lunars, :ctlf
    remove_column :hemo_lunars, :trigliceride
    remove_column :hemo_lunars, :lipide
    remove_column :hemo_lunars, :colesterol
    remove_column :hemo_lunars, :fier_seric
    remove_column :hemo_lunars, :fosfor
    remove_column :hemo_lunars, :calciu
    remove_column :hemo_lunars, :glicemie
    remove_column :hemo_lunars, :tgp
    remove_column :hemo_lunars, :tgo
    remove_column :hemo_lunars, :potasiu
    remove_column :hemo_lunars, :sodiu
    remove_column :hemo_lunars, :creatinina
    remove_column :hemo_lunars, :uree
    remove_column :hemo_lunars, :trombocite
    remove_column :hemo_lunars, :leucocite
    remove_column :hemo_lunars, :hematii
    remove_column :hemo_lunars, :hematocrit
    remove_column :hemo_lunars, :hemoglobina
  end
end
