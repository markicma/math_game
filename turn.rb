module MathGame
  class Turn
    attr_reader :count
    def initialize
      @count = 1
    end

    def increment
      @count += 1
    end
  end
end
