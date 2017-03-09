require 'mail'

  Mail.defaults do
    delivery_method :smtp, {
      :port      => 587,
      :address   => "smtp.mailgun.org",
      :user_name => "ayon88@hotmail.com",
      :password  => "AllyMoon88",
    }
  end