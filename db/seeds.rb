
User.create!(name:  "Kevin Sun",
             email: "kevinsun0@gmail.com",
             password:              "abc123",
             password_confirmation: "abc123",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

# 7.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password,
#                activated: true,
#                activated_at: Time.zone.now)
# end
#
# users = User.order(:created_at).take(8)
# 50.times do
#   title = Faker::Lorem.sentence(1)
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.posts.create!(title: title, content: content) }
# end
#
# # Following relationships
# users = User.all
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
