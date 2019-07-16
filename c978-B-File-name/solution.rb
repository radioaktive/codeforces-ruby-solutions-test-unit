class Main
  def get_problem_link
    problem_link = "https://codeforces.com/contest/978/problem/B"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/contest/978/submission/57144336'
    return submisson_link
  end

  #begin
  #of codeforces interface
  def run_interface
    n = gets.to_i
    k = gets.chomp
    puts solution(n, k)
  end
  #end
  #of codeforces interface

  def solution(n, string)
      res = 0
      for i in 0...n do
          if string[i..i+2] === 'xxx'
            res+=1
          end
      end
      return res
  end

end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
