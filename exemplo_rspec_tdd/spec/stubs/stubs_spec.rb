require 'student'
require 'course'

describe 'Stub' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be true
  end

  it 'Dinamic Args' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :bar
        'bar'
      else
        'default'
      end
    end

    expect(student.foo(:bar)).to eq('bar')
    expect(student.foo(:baz)).to eq('default')
  end

  it 'Any instance of a class' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be true
    expect(other_student.bar).to be true
  end

  it 'Errors' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect { student.bar }.to raise_error(RuntimeError)
  end
end
