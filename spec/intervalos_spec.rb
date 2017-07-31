require 'spec_helper'

describe SetIntervals do
  describe '.intervals' do
    let(:array) { [100, 101, 102, 110, 111, 112, 115] }
    let(:irregular_array) { [100.5] }
    let(:messy_array) { [99, 100] }
    let(:empty_array) { [] }

    context "return false when" do
      it "the array is empty" do
        expect(described_class.intervals(empty_array)).to be_falsy
      end
      it "the array contain unless one no-integer element" do
        expect(described_class.intervals(irregular_array)).to be_falsy
      end
      it "the array is not ordered" do
        expect(described_class.intervals(messy_array)).to be_falsy
      end
    end

    context 'return the list of intervals' do
      it "contain two element of list original" do
        expect(described_class.intervals(array)).to include([100, 102], [110, 112] [115])
      end
    end
  end
end
