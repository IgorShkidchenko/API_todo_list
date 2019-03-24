FactoryBot.define do
  factory :project do
    name { Faker::Lorem.word }
    user

    trait :with_task do
      after(:create) do |project|
        create(:task, project: project)
      end
    end
  end
end
