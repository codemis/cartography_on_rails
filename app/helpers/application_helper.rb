module ApplicationHelper
	
	def form_error_messages(f)
    if f.object.errors.present?
      render :partial => "application/form_error_messages", :locals => {:f => f}
    end
  end
  
  def stripe
    return cycle("odd", "even")
  end

end
