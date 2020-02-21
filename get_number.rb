# Get My Number Game
# Written by: Olexiy Kozak

puts "Welcome to Get My Number Game"

# Отримання ім’я гравця та виведення привітання
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Генерація випадкового числа та його збереження
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
#puts "target = #{target}"

# Обнулення кількості спроб
num_guesses = 0

# Ознака продовження гри
guessed_it = false

until num_guesses == 10 || guessed_it
  # Відображення кількості спроб, що залишилося
  puts "You've got #{10 - num_guesses} guesses left."

  # Лічильник спроб
  num_guesses += 1 

  # Запропонувати гравцеві ввести число
  print "Make a guess: "
  guess = gets.to_i
  #puts "guess = #{guess}"

  # Порівняння введеного гравцем числа із згенерованим програмою числом
  # з наступним виведенням відповідного повідомлення
  if guess < target
    puts "Oops. Your guess was LOW!"
  elsif guess > target
    puts "Oops. Your guess was HIGH!"
  #elsif guess == target
  else  
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
  
end

# якщо спроб не залишилося, повідомити згенероване програмою число
unless guessed_it
  puts "Sorry, you didn't get my number (It was #{target})."
end