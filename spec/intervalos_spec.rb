require 'spec_helper'

describe SetIntervals do
  describe '.intervals' do
    context "return false when" do
      let(:array) { [100, 101, 102, 110, 111, 112, 115] }
      let(:empty_array) { [] }
      
      it "the array is empty" do
        expect(described_class.intervals(empty_array)).to be_falsy
      end
    end
  end
end
