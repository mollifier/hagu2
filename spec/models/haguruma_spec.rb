require 'rails_helper'

RSpec.describe Haguruma, type: :model do

    describe "factory" do
      it "有効なデータを作成すること" do
        message = build(:haguruma)
        expect(message).to be_valid
      end
    end
end
