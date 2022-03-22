require 'person'

shared_examples 'status' do |feeling|
  it "#{feeling}" do
    person.send("#{feeling}!")
    expect(person.status).to eq("Feeling #{feeling}!")
  end
end

describe "Person" do
  subject(:person) { Person.new }

  # it 'happy!' do
  #   person.happy!
  #   expect(person.status).to eq('Feeling happy!') 
  # end

  # it 'sad!' do
  #   person.sad!
  #   expect(person.status).to eq('Feeling sad!')
  # end

  # it 'pleased' do
  #   person.pleased!
  #   expect(person.status).to eq('Feeling pleased!')
  # end

  include_examples 'status', :happy
  it_behaves_like 'status', :sad
  it_should_behave_like 'status', :pleased
end
