require 'faker'

user = User.create!(email: 'user@example.com', password_digest: 'password')
another_user = User.create!(email: 'another_user@example.com', password_digest: 'password')

2.times do |index|
  Project.create!(name: Faker::Lorem.word, user: (index.zero? ? user : another_user))
end

Project.find_each do |project|
  2.times { project.tasks.create!(name: Faker::Lorem.word) }
end

Task.find_each do |task|
  2.times { task.comments.create!(body: Faker::Lorem.sentence) }
end
