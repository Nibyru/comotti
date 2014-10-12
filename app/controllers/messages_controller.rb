class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])

    Rails.logger.info ">>>>>>>>>>>>>>>> 1"
    respond_to do |format|
      if @message.save
        Rails.logger.info ">>>>>>>>>>>>>>>> 2"
        Contact.admin_email(@message).deliver
        Rails.logger.info ">>>>>>>>>>>>>>>> 3"
        Contact.user_email(@message).deliver
        Rails.logger.info ">>>>>>>>>>>>>>>> 4"
        format.html { redirect_to root_path, notice: 'Gracias por ponerse en contacto con nosotros.' }
      else
        format.html { render controller: 'site', action: 'contacto' }
      end
    end
  end

private
  def message_params
    params.require(:message).permit(:name, :company, :phone, :cellphone, :mail, :subject, :body)
  end
end
