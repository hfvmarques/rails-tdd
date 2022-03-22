require 'calculator'

describe Calculator do
  context '#sum' do
    it 'both positive' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    specify 'with a negative number' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    example 'both negative' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end

    xit 'this is a pending test' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end

  context '#div' do
    it 'divide by 0' do
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(3, 0) }.to raise_error('divided by 0')
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.div(3, 0) }.to raise_error(/divided/)
    end
  end
end
