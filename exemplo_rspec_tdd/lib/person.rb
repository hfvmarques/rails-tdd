class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = 'Feeling happy!'
  end

  def sad!
    @status = 'Feeling sad!'
  end

  def pleased!
    @status = 'Feeling pleased!'
  end
end