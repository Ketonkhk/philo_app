namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    99.times do |n|
      first  = Faker::Name.first_name
      last = Faker::Name.last_name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(first: first,
      			   last: last,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
  end
