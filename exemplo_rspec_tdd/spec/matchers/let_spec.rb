$counter = 0

describe 'let', type: 'let' do
  let(:count) { $counter += 1 }

  it 'memorize value' do
    expect(count).to eq(1)
    expect(count).to eq(1) # fica em cache dentro do mesmo teste
  end

  it 'is not cached between tests' do
    expect(count).to eq(2)
  end
end