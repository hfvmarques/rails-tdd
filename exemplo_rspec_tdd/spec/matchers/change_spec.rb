require 'counter'

describe 'Matcher change' do
  it { expect { Counter.increment }.to change { Counter.quantity } }
  it { expect { Counter.increment }.to change { Counter.quantity }.by(1) }
  it { expect { Counter.increment }.to change { Counter.quantity }.from(2) }
  it { expect { Counter.increment }.to change { Counter.quantity }.to(4) }
  it { expect { Counter.increment }.to change { Counter.quantity }.from(4).to(5) }
end