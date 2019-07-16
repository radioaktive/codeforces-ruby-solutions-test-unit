class Main
  def get_problem_link
    problem_link = "https://codeforces.com/contest/136/problem/A"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/contest/136/submission/57146455'
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

  def solution(n, presents_array)
      res_array = []
      for i in 1..n do
        res_array.push(presents_array.index(i) + 1)
      end
      return res_array.join(' ')
  end

end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
