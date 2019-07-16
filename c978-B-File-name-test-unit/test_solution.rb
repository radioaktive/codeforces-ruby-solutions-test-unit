require 'test/unit'
require_relative 'solution'

class TestMain < Test::Unit::TestCase
    def test_solution
      input = []
      output = []
      input[0] = [6, 'xxxiii']
		  output[0] = 1
		  input[1] = [5, 'xxoxx']
		  output[1] = 0
		  input[2] = [10, 'xxxxxxxxxx']
		  output[2] = 8

      main = Main.new
      puts "problem link: " + main.get_problem_link
      for i in 0...input.length do
    	  assert_equal(output[i], main.solution(input[i][0], input[i][1]))
      end
    end
end
