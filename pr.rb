puts "Будь ласка, введіть змінну a: "
a = gets.to_i

puts "Будь ласка, введіть змінну b: "
b = gets.to_i

puts "a не дорівнює b" if a != b

if a < b
 puts "a менше b"
elsif a > b
 puts "a більше b"
elsif a==b
 puts "a дорівнює b"
end
