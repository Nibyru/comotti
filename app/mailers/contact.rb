class Contact < ActionMailer::Base
  default from: "from@example.com"

  def admin_email(user)
    @user = user
    @url  = 'http://www.comottipastas.com'
    mail(to: @user.email, subject: 'Nuevo email de contacto')
  end

  def user_email(user)
    @user = user
    @url  = 'http://www.comottipastas.com'
    mail(to: @user.email, subject: 'La mejor calidad y variedad en pastas, pizzas, tartas y postres')
  end
end
