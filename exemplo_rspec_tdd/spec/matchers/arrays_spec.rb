RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]), 'Arrays' do
  it 'include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
  end

  it { expect(subject).to exclude(4, 0) }

  it 'not include' do
    expect(subject).not_to include([3, 2])
  end
  
  it 'contain exactly' do
    expect(subject).to contain_exactly(3, 1, 2)
  end
  
  it 'match array' do
    expect(subject).to match_array([1, 2, 3])
  end
end