$count = 0

describe 'let!' do
  invocation_order = []

  let!(:counter) do
    invocation_order << :let!
    $count += 1
  end

  it 'calls helper method before testing' do
    invocation_order << :example
    expect(invocation_order).to eq([:let!, :example])
    expect(counter).to eq(1)
  end
end