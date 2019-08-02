require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = [5, 1, 3, 4];
      output[0] = 800;
      input[1] = [1, 1, 1, 1];
      output[1] = 256;

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i]))
      end
    end
end
