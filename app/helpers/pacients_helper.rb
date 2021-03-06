module PacientsHelper
  def link_to_analize(pacient)
    analiza_path = case pacient.last_protocol.program
      when 'capd' then analiza_path = new_pacient_capd_url(pacient)
      when 'hd' then analiza_path = new_pacient_hemo_lunar_url(pacient)
      when 'brd' then analiza_path = new_pacient_bcr_path(pacient)
      end

    link_to('Adauga alt set de analize', analiza_path)
  end
end
