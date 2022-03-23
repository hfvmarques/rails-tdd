describe "Test Double" do
  it '' do
    user = double('User')

    # allow(user).to receive(:name).and_return('Henrique')
    # allow(user).to receive(:password).and_return('passuordi')
    allow(user).to receive_messages(name: 'Henrique', password: 'passuordi')
    user.name
    user.password
  end
end
