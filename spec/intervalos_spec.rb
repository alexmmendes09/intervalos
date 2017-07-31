require 'spec_helper'

describe SetIntervals do
  describe '.intervals' do
    context "return false when" do
      let(:array) { [100, 101, 102, 110, 111, 112, 115] }
      let(:irregular_array) { [100.5] }
      let(:empty_array) { [] }

      it "the array is empty" do
        expect(described_class.intervals(empty_array)).to be_falsy
      end
      it "the array contain unless one no-integer element" do
        expect(described_class.intervals(irregular_array)).to be_falsy
      end
    end
  end
end
