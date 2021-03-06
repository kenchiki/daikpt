FactoryBot.define do
  factory :user do
    sequence(:name) { Faker::Name.name }
    sequence(:email) { |n| "test#{n}@example.com" }
    password { '12345678' }
    confirmed_at { Time.current }
  end

  trait :with_project do
    after(:create) do |user|
      project = create(:project)
      create(:project_membership, user: user, project: project)
    end
  end
end
