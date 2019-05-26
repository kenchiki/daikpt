FactoryBot.define do
  factory :project do
    sequence(:name) { |n| "プロジェクト#{n}" }
  end
end
