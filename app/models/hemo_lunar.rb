class HemoLunar < ActiveRecord::Base
  belongs_to :pacient
  def self.analize_list
    analize=self.column_names
    analize.drop(5)
    analize << "protocol Semestrial"
    analize_semestrial = HemoSemestrial.column_names
    analize_semestrial= analize_semestrial.drop(2)
    analize.concat(analize_semestrial)
  end

end
