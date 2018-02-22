h, w = gets.split(' ').map(&:to_i)

h.times do |_|
  l = gets.split(' ').map { |pix| pix.to_i > 127 ? 1 : 0 }
  puts l.join(' ')
end

