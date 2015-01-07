class UserMailer < ActionMailer::Base

  default from: 'thedepsdev@gmail.com'

  def confirmation_mail(user)

    @user = user
    token = SecureRandom.hex[0,10].upcase
    @token = Token.create(login: @user.login, verified: false, token: token)
    # trocar localhost por servername
    url = "//dev-alexmartinssi-3.c9.io/confirmation?login=" + @user.login + "&token=" + @token.token 

    mail(to: @user.email,
         subject: "Email confirmation",
         body: url)

  end

end