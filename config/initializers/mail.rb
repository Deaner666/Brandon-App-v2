if(Rails.env.production?)
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['app1887297@heroku.com'],
    :password       => ENV['4i2tpoik0407'],
    :domain         => 'heroku.com'
  }
  ActionMailer::Base.delivery_method = :smtp
end