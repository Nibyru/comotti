class Contact < ActionMailer::Base
  default from: "gustavocomotti@gmail.com"

  def admin_email(message)
    @message = message
    @url  = 'http://www.comottipastas.com'
    mail(to: 'gustavocomotti@gmail.com', subject: 'Nuevo email de contacto')
  end

  def user_email(message)
    @message = message
    @url  = 'http://www.comottipastas.com'
    mail(to: @message.mail, subject: 'Comotti - La mejor calidad y variedad en pastas, pizzas, tartas y postres')
  end
end
