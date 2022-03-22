describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(6)
  end

  it { expect(subject).to cover(3) }

  it { is_expected.to cover(4) }
  it { is_expected.to cover(2, 3) }
  it { is_expected.not_to cover(0, 6) }
end