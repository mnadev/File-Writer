puts "Welcome to FileWriter"
puts "Type each line and hit enter"
puts "To save and quit, type :s one a new line"
puts "To quit without saving type :q"

puts "\n"

puts "Type the filename"

filename = gets.strip

isSaved = true
lines = []

puts "Start typing below"

puts "\n"

while true
  line = gets
  line = line.to_s.strip

  if line.eql? "s"
    isSaved = true
    break
  end

  if line.eql? "q"
    isSaved = false
    break
  end

  lines.push(line)
end


if isSaved
  puts "Saving..."
  file = File.open(filename, "w")
  for line in lines
    file.puts line
  end
  file.close
end
