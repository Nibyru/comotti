class Contact < ActionMailer::Base

  def admin_email(message)
    @message = message
    @url  = 'http://www.comottipastas.com'
    mail(to: 'dotestudiografico@gmail.com', subject: 'Nuevo email de contacto')
  end

  def message_email(message)
    @message = message
    @url  = 'http://www.comottipastas.com'
    mail(to: @message.mail, subject: 'Comotti - La mejor calidad y variedad en pastas, pizzas, tartas y postres')
  end
end
