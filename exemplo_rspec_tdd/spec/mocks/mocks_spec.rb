require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    student = Student.new
    
    expect(student).to receive(:bar)

    student.bar
  end

  it 'Args' do
    student = Student.new
    
    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it 'Repetition' do
    student = Student.new
    
    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
  end

  it 'Repetition2' do
    student = Student.new
    
    expect(student).to receive(:foo).with(123).at_least(2).times

    student.foo(123)
    student.foo(123)
    student.foo(123)
  end

  it 'Return' do
    student = Student.new
    
    expect(student).to receive(:foo).with(123).and_return(true)

    student.foo(123)
  end
end