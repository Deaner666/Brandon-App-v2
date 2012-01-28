class OrderMailer < ActionMailer::Base
  
  def order_email(order)
    @order = order
    mail(:from => "stationery@brandonhire.co.uk",
         :to => "sales@drinkmaster.co.uk",
         :bcc => "ddean@drinkmaster.co.uk",
         :subject => "An order for drinks has been placed by a Brandon Hire branch")
  end
  
end
