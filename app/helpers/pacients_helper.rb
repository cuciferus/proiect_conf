module PacientsHelper
  def link_to_analize
    case @pacient.last_protocol.program
    when 'capd'
      analiza_path = new_pacient_capd_url(@pacient)
    when 'hd'
      analiza_path = new_pacient_hemodializa_path(@pacient)
    when 'brd'
      analiza_path = new_pacient_bcr_path(@pacient)
    end
    link_to('Adauga alt set de analize', analiza_path)
  end
end
