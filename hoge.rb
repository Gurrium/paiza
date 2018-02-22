parent = gets.split(' ').map(&:to_i)

gets.to_i.times do |_|
  child = gets.split(' ').map(&:to_i)
  if parent[0] > child[0]
    puts "High"
  elsif child[0] > parent[0]
    puts "Low"
  else
    puts parent[1] < child[1] ? "High" : "Low"
  end
end
