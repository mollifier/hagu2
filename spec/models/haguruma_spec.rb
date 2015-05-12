require 'rails_helper'

RSpec.describe Haguruma, type: :model do

  describe "factory" do
    subject { build(:haguruma) }
    it { is_expected.to be_valid }
  end

  describe "name" do
  end

  describe "display_name" do
  end

  describe "webhook_data_format" do
  end

end
