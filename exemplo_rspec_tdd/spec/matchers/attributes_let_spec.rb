require 'person'

describe 'Attributes', :attributes do
  # before(:each) do
  #   puts 'ANTES DE CADA TESTE'
  #   @person = Person.new
  # end

  let(:person) { Person.new }

  it 'have_attributes' do
    person.name = 'Henrique'
    person.age = 34

    expect(person).to have_attributes(name: 'Henrique', age: 34)
    expect(person).to have_attributes(name: starting_with('H'), age: be >= 30)
  end

  it 'have_attributes' do
    person.name = 'Hernandes'
    person.age = 31

    expect(person).to have_attributes(name: starting_with('H'), age: be >= 30)
  end
end