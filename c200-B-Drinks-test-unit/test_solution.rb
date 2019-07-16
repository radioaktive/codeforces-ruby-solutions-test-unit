require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = [3, [50, 50, 100]];
		  output[0] = 66.666666666667;
		  input[1] = [4, [0, 25, 50, 75]];
		  output[1] = 37.500000000000;

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i][0], input[i][1]))
      end
    end
end
