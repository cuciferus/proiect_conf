class HemoLunar < ActiveRecord::Base
  belongs_to :pacient
  def self.analize_list
    hemo_lunar=self.column_names
    hemo_lunar= hemo_lunar.drop(5)
    analize_semestrial = HemoSemestrial.column_names
    analize_semestrial= analize_semestrial.drop(2)
    analize_semestrial.pop(3)
    analize = {'Protocol Lunar'=> hemo_lunar, 'Protocol Semestrial' => analize_semestrial}
  end

end
