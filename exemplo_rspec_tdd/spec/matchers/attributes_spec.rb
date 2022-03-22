require 'person'

describe 'Attributes' do
  # before(:each) do
  #   puts 'ANTES DE CADA TESTE'
  #   @person = Person.new
  # end

  # after(:each) do
  #   @person.name = 'Changed name'
  #   puts "APÓS CADA TESTE - #{@person.name}"
  # end

  around(:each) do |test|
    puts 'ANTES DE CADA TESTE'
    @person = Person.new

    test.run

    @person.name = 'Changed name'
    puts "APÓS CADA TESTE - #{@person.name}"
  end

  it 'have_attributes' do
    @person.name = 'Henrique'
    @person.age = 34

    expect(@person).to have_attributes(name: 'Henrique', age: 34)
    expect(@person).to have_attributes(name: starting_with('H'), age: be >= 30)
  end

  it 'have_attributes' do
    @person.name = 'Hernandes'
    @person.age = 31

    expect(@person).to have_attributes(name: starting_with('H'), age: be >= 30)
  end
end