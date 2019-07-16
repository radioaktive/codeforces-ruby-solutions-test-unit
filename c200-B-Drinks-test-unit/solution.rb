class Main
  def get_problem_link
    problem_link = "https://codeforces.com/contest/200/problem/B"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/contest/200/submission/57140022'
    return submisson_link
  end

  #begin
  #of codeforces interface
  def run_interface
    n = gets.to_i
    k = gets.split(' ').map(&:to_i)
    puts solution(n, k)
  end
  #end
  #of codeforces interface

  def solution(n, drinks_array)
      sum = 0
      drinks_array.each {|value|
        sum += value
      }
      return sum.fdiv(n).round(12)
  end

end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
