class Main
  def get_problem_link
    problem_link = "https://codeforces.com/problemset/problem/1097/A"
    return problem_link
  end

  def get_submission_link
    submission_link = 'https://codeforces.com/contest/1097/submission/57134249'
    return submisson_link
  end

  #begin
  #of codeforces interface
  def run_interface
    n = gets.chomp
    k = gets.chomp
    puts solution(n, k)
  end
  #end
  #of codeforces interface

  def solution(card_on_table, cards_in_hand)
      if cards_in_hand.index(card_on_table[0]) || cards_in_hand.index(card_on_table[1])
        return 'YES'
      else
        return 'NO'
      end
  end
end

#then upload to codeforces uncomment this line:
#Main.new.run_interface
