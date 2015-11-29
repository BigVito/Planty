class StaticPagesController < ApplicationController
  def index
  end

  def faq
    @contact = Contact.new
  end

  def contact
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to faq_path, notice: "Grazie per averci scritto!"
    else
      flash.now[:error] = 'Non è stato possibile inviare il messaggio.'
      render :faq
    end
  end
  
end
