require 'rails_helper'

RSpec.describe TryThing, type: :model do
  describe '#create_keep_things_from_try_thing!' do
    let(:user) { create(:user, :with_project) }
    let!(:kpt) { create(:kpt, project: user.projects.first)}
    let(:problem_thing) { kpt.problem_things.first }
    let(:try_thing) { problem_thing.try_things.first }
    it 'TryからKeepが作成できること' do
      # updateのcomplete: trueのチェックもした方がいいのではないか
      #
      expect {
        try_thing.create_keep_things_from_try_thing!
      }.to change{ KeepThing.count }.by(1)

      # FIXME: expectの結果は固定値で検証する方が好ましい
      expect(KeepThing.last.content).to eq try_thing.content
    end
  end
end
