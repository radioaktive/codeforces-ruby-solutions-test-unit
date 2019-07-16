require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = [];
      input[0][0] = 6;
      input[0][1] = [5, 10, 2, 3, 14, 5];
      output[0] = 5;
      input[1] = [];
      input[1][0] = 2;
      input[1][1] = [1, 100];
      output[1] = 99;

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i][0], input[i][1]))
      end
    end
end
