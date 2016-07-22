class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def name
    @name
  end

  def lives
    @lives
  end

  def lives=(lives)
    @lives = lives
    puts "#{@name} IS THE WINNER! now he gets a Scotch" if lives == 0
  end

end

jim = Player.new ("jim")
bob = Player.new ("bob")

def player_turn(player)
  num1 = rand(1..20)
  num2 = rand(1..20)
  puts "#{player.name}: what is #{num1} + #{num2}"
  problem = num1 + num2
  answer = gets.chomp
  answer = answer.to_i

  if answer != problem
    player.lives = player.lives - 1
  end

end

def math_game(player1, player2)
  until player1.lives == 0 || player2.lives == 0
    puts player_turn(player1)
    puts player_turn(player2) if player1.lives > 0

    if player1.lives > 0 && player2.lives > 0
      puts "#{player2.name}'s lives are #{player2.lives}, #{player1.name}'s lives are #{player1.lives}"
    elsif player1.lives == 0
      puts "#{player2.name}'s lives are #{player2.lives}"
    elsif player2.lives == 0
      puts "#{player1.name}'s lives are #{player1.lives}"
    else
    end

  end
end


math_game(jim,bob)
