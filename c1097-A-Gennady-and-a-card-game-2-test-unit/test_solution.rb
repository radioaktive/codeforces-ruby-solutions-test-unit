require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = ['AS', '2H 4C TH JH AD']
      output[0] = 'YES'
      input[1] = ['2H', '3D 4C AC KD AS']
      output[1] = 'NO'
      input[2] = ['4D', 'AS AC AD AH 5H']
      output[2] = 'YES'

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i][0], input[i][1]))
      end
    end
end
