require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = [];
      input[0][0] = 4;
      input[0][1] = [2, 3, 4, 1];
      output[0] = '4 1 2 3';
      input[1] = [];
      input[1][0] = 3;
      input[1][1] = [1, 3, 2];
      output[1] = '1 3 2';
      input[2] = [];
      input[2][0] = 2;
      input[2][1] = [1, 2];
      output[2] = '1 2';

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i][0], input[i][1]))
      end
    end
end
