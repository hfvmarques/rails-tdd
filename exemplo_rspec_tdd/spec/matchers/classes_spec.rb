require 'not_empty_string'

describe "Classes" do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) # Pode ser por herança
  end

  it 'be_instance_of' do
    str = NotEmptyString.new

    expect(str).not_to be_instance_of(String)
    expect(str).to be_instance_of(NotEmptyString)
  end

  it 'be_kind_of' do
    str = NotEmptyString.new

    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(NotEmptyString)
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end

  it 'be_a / be_an' do # O mesmo que usar be_kind_of
    str = NotEmptyString.new

    expect(str).to be_a(String)
    expect(str).to be_a(NotEmptyString)
  end
end
