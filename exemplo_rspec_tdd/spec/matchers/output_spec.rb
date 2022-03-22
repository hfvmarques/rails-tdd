describe 'Matcher output' do
  it { expect { puts 'Henrique'}.to output.to_stdout }
  it { expect { print 'Henrique'}.to output('Henrique').to_stdout }
  it { expect { puts 'Henrique Marques'}.to output(/Henrique/).to_stdout }

  it { expect { warn 'Henrique'}.to output.to_stderr }
  it { expect { warn 'Henrique'}.to output(/Henrique/).to_stderr }
  it { expect { warn 'Henrique Marques'}.to output(/Henrique/).to_stderr }
end