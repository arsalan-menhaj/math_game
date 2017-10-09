class Turn

  def initialize
    #Generate two random integers to form the question
    @number_a = 1 + rand(15)
    @number_b = 1 + rand(15)

    #Randomly pick from three possible operations
    @operation_index = rand(3)
    case @operation_index
    when 0
      @operation_string = '+'
      @answer = @number_a + @number_b
    when 1
      @operation_string = '-'
      @answer = @number_a - @number_b
    when 2
      @operation_string = '*'
      @answer = @number_a * @number_b
    end

    @question_string = "what is #{@number_a} #{@operation_string} #{@number_b}?"
  end

  def show_question
    @question_string
  end

  def check_answer(input)
    input == @answer
  end
end

