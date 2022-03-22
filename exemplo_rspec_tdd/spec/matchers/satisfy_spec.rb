describe 'Satisfy' do
  it { expect(10).to satisfy { |item| item % 2 == 0 } }
  it { expect(9).to satisfy { |item| item % 3 == 0 } }

  it { 
    expect(15).to satisfy('be a multiple of 5') do |item|
      item % 5 == 0
    end 
  }
end