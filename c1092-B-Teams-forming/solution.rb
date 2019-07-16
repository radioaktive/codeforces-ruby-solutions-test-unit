class Main
  def get_problem_link
    problem_link = "https://codeforces.com/problemset/problem/1092/B"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/contest/1092/submission/57136870'
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

  def solution(n, students_array)
      res = 0
      students_array.sort!
      (0...students_array.length).step(2).each do |i|
          res = res + (students_array[i+1]-students_array[i]);
      end
      return res
  end

end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
