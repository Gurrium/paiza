(1..100).each do |i|
  puts "#{i} "
  if i % 3 == 0
    if i % 5 == 0
      puts 'fizzbuzz'
      next
    else
      puts 'fizz'
      next
    end
  end

  if i % 5 == 0
    puts 'buzz'
    next
  end
end
