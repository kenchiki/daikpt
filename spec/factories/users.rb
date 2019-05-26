FactoryBot.define do
  factory :user do
    sequence(:name) { Faker::Name.name }
    sequence(:email) { |n| "test#{n}@example.com" }
    password { '12345678' }
  end

  trait :with_project do
    after(:create) do |user|
      project = FactoryBot.create(:project)
      FactoryBot.create(:project_membership, user: user, project: project)
    end
  end
end
