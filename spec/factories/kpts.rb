FactoryBot.define do
  factory :kpt do
    target_on { Time.current }
    after(:create) do |kpt|
      FactoryBot.create(:keep_thing, kpt: kpt)
      FactoryBot.create(:problem_thing, kpt: kpt) do |problem_thing|
        FactoryBot.create(:try_thing, problem_thing: problem_thing)
      end
    end
  end
end
