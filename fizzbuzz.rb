# 文字数を少なくする
(1..100).each do |i|
  print "#{i} "
  if i % 3 == 0
    puts i % 5 == 0 ? 'fizzbuzz' : 'fizz'
    next
  end

  puts i % 5 == 0 ? 'buzz' : nil
end
