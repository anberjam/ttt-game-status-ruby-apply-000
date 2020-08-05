# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = 
[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  def won? (board)
    if board.all?("") || board.all?(" ") || board.all?(nil)
      return nil
    end
        
    WIN_COMBINATIONS.each do |win_index|
        if board[win_index[0]]=="X" && board[win_index[1]]=="X" && board[win_index[2]]=="X"
            return win_index
        elsif board[win_index[0]]=="O" && board[win_index[1]]=="O" && board[win_index[2]]=="O"
            return win_index
        elsif board.none?("") && board.none?(" ") && board.none?(nil)
        return nil
      end
    end
  end
  
  def full?(board)
    if board.none?(" ") && board.none?("") && board.none?(nil)
      return true
    else
      return false
    end
  end

def draw? (board)
  if won?(board) != nil
    return false
  end
  if (board[0]==board[4] && board[4]==board[8]) || (board[2]==board[4] && board[4]==board[6])
    return false
  end
  if full?(board) == true
    return true
  end
end

def over? (board)
  if draw?(board)==true
    return true
  elsif (won?(board) != nil)
    return true
  elsif full?(board) == true
  return true
elsif full?(board) != true && won?(board) == nil
  return false

end
end