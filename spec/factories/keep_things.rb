FactoryBot.define do
  factory :keep_thing do
    content { '本番作業をするときはペアオペする' }
    kpt { nil }
    complete { false }
  end
end
