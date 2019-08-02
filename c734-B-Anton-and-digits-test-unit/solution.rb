class Main
  def get_problem_link
    problem_link = "https://codeforces.com/problemset/problem/734/B"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/problemset/submission/734/58173922'
    return submisson_link
  end

  #begin
  #of codeforces interface
  def run_interface
    k = gets.split(' ').map(&:to_i)
    puts solution(k)
  end
  #end
  #of codeforces interface

  def solution(digits_array)
      res = 0
      digits_2d_array = [
        ["2", digits_array[0]],
        ["3", digits_array[1]],
        ["5", digits_array[2]],
        ["6", digits_array[3]]
      ]
      who_make256_2d_array = digits_2d_array.map(&:clone)
      who_make256_2d_array.delete_at(1)
      who_make256_2d_array.sort! {|a,b| a[1] <=> b[1]}
      quantity_of256 = who_make256_2d_array[0][1]
      start_quantity_of2 = digits_2d_array[0][1]
      fin_quantity_of2 = start_quantity_of2 - quantity_of256
      who_make32_2d_array = digits_2d_array.map(&:clone)
      who_make32_2d_array = who_make32_2d_array[0..1]
      who_make32_2d_array[0][1] = fin_quantity_of2
      who_make32_2d_array.sort! {|a,b| a[1] <=> b[1]}
      quantity_of32 = who_make32_2d_array[0][1]
      res = quantity_of256 * 256 + quantity_of32 * 32
      return res
  end

end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
