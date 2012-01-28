ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #   ul do
  #     Post.recent(5).collect do |post|
  #       li link_to(post.title, admin_post_path(post)))
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendererd within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  
  section "Recent Orders" do
    table_for Order.where(:status => "pending").limit(10) do
      column :id
      column "Branch", :user
      column "Total" do |order|
        format_price order.total
      end
      column :created_at
      column "Actions" do |order|
        ul do
          li link_to "View", admin_order_path(order)
          li link_to "Delete", admin_order_path(order), :method => :delete, :confirm => "Are you sure you want to delete that order?"
        end
      end
    end
    p strong link_to raw("View all orders &rarr;"), admin_orders_path
  end

end
