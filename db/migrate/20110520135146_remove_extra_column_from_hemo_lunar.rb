class RemoveExtraColumnFromHemoLunar < ActiveRecord::Migration
  def self.up
    remove_column :hemo_lunars, :fier_seric
    remove_column :hemo_lunars, :colesterol
    remove_column :hemo_lunars, :lipide
    remove_column :hemo_lunars, :trigliceride
    remove_column :hemo_lunars, :ctlf
    remove_column :hemo_lunars, :aptt
    remove_column :hemo_lunars, :ap
    remove_column :hemo_lunars, :fibrinogen
    remove_column :hemo_lunars, :tquick
    remove_column :hemo_lunars, :proteine_serice
    remove_column :hemo_lunars, :hemoglobina_glicozilata
    remove_column :hemo_lunars, :saturarea_transferinei
    remove_column :hemo_lunars, :pcr
    remove_column :hemo_lunars, :urr
    remove_column :hemo_lunars, :ektv
    remove_column :hemo_lunars, :fosfataza_alcalina
    remove_column :hemo_lunars, :albumina
    remove_column :hemo_lunars, :alfa1
    remove_column :hemo_lunars, :alfa2
    remove_column :hemo_lunars, :beta
    remove_column :hemo_lunars, :gamma
    remove_column :hemo_lunars, :aghbs
    remove_column :hemo_lunars, :achbs
    remove_column :hemo_lunars, :achcv
    remove_column :hemo_lunars, :achiv
    remove_column :hemo_lunars, :pth
    remove_column :hemo_lunars, :greutate
    remove_column :hemo_lunars, :sga
    remove_column :hemo_lunars, :tas
    remove_column :hemo_lunars, :tad
    remove_column :hemo_lunars, :indice_b_mortalitate
    remove_column :hemo_lunars, :spitalizare
    remove_column :hemo_lunars, :vit_d
    remove_column :hemo_lunars, :binder_fosfor
    remove_column :hemo_lunars, :epo_saptamana
    remove_column :hemo_lunars, :durata_hd
    remove_column :hemo_lunars, :heparina_dializa
  end

  def self.down
    add_column :hemo_lunars, :fier_seric
    add_column :hemo_lunars, :colesterol
    add_column :hemo_lunars, :lipide
    add_column :hemo_lunars, :trigliceride
    add_column :hemo_lunars, :ctlf
    add_column :hemo_lunars, :aptt
    add_column :hemo_lunars, :ap
    add_column :hemo_lunars, :fibrinogen
    add_column :hemo_lunars, :tquick
    add_column :hemo_lunars, :proteine_serice
    add_column :hemo_lunars, :hemoglobina_glicozilata
    add_column :hemo_lunars, :saturarea_transferinei
    add_column :hemo_lunars, :pcr
    add_column :hemo_lunars, :urr
    add_column :hemo_lunars, :ektv
    add_column :hemo_lunars, :fosfataza_alcalina
    add_column :hemo_lunars, :albumina
    add_column :hemo_lunars, :alfa1
    add_column :hemo_lunars, :alfa2
    add_column :hemo_lunars, :beta
    add_column :hemo_lunars, :gamma
    add_column :hemo_lunars, :aghbs
    add_column :hemo_lunars, :achbs
    add_column :hemo_lunars, :achcv
    add_column :hemo_lunars, :achiv
    add_column :hemo_lunars, :pth
    add_column :hemo_lunars, :greutate
    add_column :hemo_lunars, :sga
    add_column :hemo_lunars, :tas
    add_column :hemo_lunars, :tad
    add_column :hemo_lunars, :indice_b_mortalitate
    add_column :hemo_lunars, :spitalizare
    add_column :hemo_lunars, :vit_d
    add_column :hemo_lunars, :binder_fosfor
    add_column :hemo_lunars, :epo_saptamana
    add_column :hemo_lunars, :durata_hd
    add_column :hemo_lunars, :heparina_dializa
 end
end
