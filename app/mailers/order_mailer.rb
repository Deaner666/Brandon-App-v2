class OrderMailer < ActionMailer::Base
  
  def order_email(order)
    @order = order
    mail(:from => "stationery@brandonhire.co.uk",
         :to => "mail@dave-dean.co.uk",
         :bcc => "mail@dave-dean.co.uk",
         :subject => "An order for drinks has been placed by a Brandon Hire branch")
  end
  
end
