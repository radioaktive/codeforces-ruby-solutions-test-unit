require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = [3, [0, 0, 1]]
      output[0] = 'HARD'
      input[1] = [1, [0]]
      output[1] = 'EASY'

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i][0], input[i][1]))
      end
    end
end
