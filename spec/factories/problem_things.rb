FactoryBot.define do
  factory :problem_thing do
    content { '本番でデータを吹き飛ばした' }
    # 書かなくてもいいかも（アソシエーションを試した時の残骸かもしれない）
    kpt { nil }
  end
end
