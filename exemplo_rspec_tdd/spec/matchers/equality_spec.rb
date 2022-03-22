describe "Equality Matchers" do
  it '#equal testa objetos' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to equal(y)
  end

  it '#be testa objetos' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to be(y)
  end

  it '#eql testa o valor/conteúdo' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
  end

  it '#eq testa o valor/conteúdo' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eq(y)
  end
end