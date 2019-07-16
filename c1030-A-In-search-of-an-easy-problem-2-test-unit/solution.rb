class Main
  def get_problem_link
    problem_link = "https://codeforces.com/contest/1030/problem/A"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/contest/1030/submission/57013856'
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

  def solution(n, k)
      res = 'EASY'
      for i in 0...k.length
        if k[i] == 1
          res ='HARD'
        end
      end
      return res
  end

end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
