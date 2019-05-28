FactoryBot.define do
  factory :kpt do
    # Dataでもいいのかも？
    target_on { Time.current }
    after(:create) do |kpt|
      create(:keep_thing, kpt: kpt)
      create(:problem_thing, kpt: kpt) do |problem_thing|
        create(:try_thing, problem_thing: problem_thing)
      end
    end
  end
end
