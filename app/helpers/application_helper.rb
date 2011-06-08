module ApplicationHelper
  def blood_result(object)
    puts *params
    remote_function(:url => url_for(object),
                   :method => :put
                   )
  end


end
