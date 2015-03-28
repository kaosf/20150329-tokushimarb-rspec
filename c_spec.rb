require 'rspec'
require './c'

describe 'calc' do
  describe 'add' do
    subject { add(x, y) }

    context 'x: 0, y: 0' do
      let(:x) { 0 }
      let(:y) { 0 }
      it { is_expected.to eq 0 }
    end

    context 'x: 0, y: 1' do
      let(:x) { 0 }
      let(:y) { 1 }
      it { is_expected.to eq 1 }
    end
  end

  describe 'sub' do
    subject { sub(x, y) }

    context 'x: 0, y: 0' do
      let(:x) { 0 }
      let(:y) { 0 }
      it { is_expected.to eq 0 }
    end

    context 'x: 2, y: 1' do
      let(:x) { 2 }
      let(:y) { 1 }
      it { is_expected.to eq 1 }
    end
  end

  describe 'mul' do
    it { expect(mul(1, 0)).to eq 0 }
    it { expect(mul(0, 1)).to eq 0 }
    it { expect(mul(1, 1)).to eq 1 }
    it { expect(mul(2, 3)).to eq 6 }
  end
end
