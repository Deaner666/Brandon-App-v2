namespace :db do
  desc "load user data from csv"
  task :load_region3_csv  => :environment do
    require 'csv'
    p "Starting import"
    n = 0
    CSV.foreach("lib/tasks/region3.csv") do |row|
      n = n + 1
      if n == 1
        p "Skipping header row"
      else
        # p row[0] + " " + row[1] + " " + row[2] + " "+ row[3] + " " + row[4] + " " + row[5] + " " + row[6] + " " + row[7] + " " + row[8] + " " + row[9] + " " + row[10] 
        User.create(:username => row[0], :email => row[1], :password => row[2], :password_confirmation => row[3],
        :depot_number => row[4].to_i, :depot_name => row[5].to_s, :address1 => row[6], :address2 => row[7],
        :address3 => row[8], :address4 => row[9], :postcode => row[10])
      end
    end
    p "Import completed"
  end
end