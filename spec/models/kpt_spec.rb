require 'rails_helper'

RSpec.describe Kpt, type: :model do
  describe '#build_relation_things' do
    let(:project) { FactoryBot.create(:project) }
    let(:kpt) { FactoryBot.create(:kpts, project: project) }
    it '' do
      expect(kpt.build_relation_things).to be_presence kpt.keep_things
    end
  end

end
