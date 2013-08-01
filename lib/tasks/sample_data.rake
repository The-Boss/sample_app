namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    
    admin = User.create!(name: "George",
                         email: "george.a.bostock@gmail.com",
                         password: "superstar",
                         password_confirmation: "superstar")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
