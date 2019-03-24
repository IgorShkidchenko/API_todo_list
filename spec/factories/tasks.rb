FactoryBot.define do
  factory :task do
    name { Faker::Lorem.word }
    deadline { Time.now + 1.week }
    comments_count { rand(1..10) }
    project

    trait :with_comment do
      after(:create) do |task|
        create(:comment, task: task)
      end
    end
  end
end
