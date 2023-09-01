namespace :user do
    desc "update users"
    task update: :environment do
        puts "Updated on: #{Date.today}"
    end
end
