(1..100).each { |i| print "#{i} ";puts i % 3 == 0 ? i % 5 == 0 ? 'fizzbuzz' : 'fizz' : i % 5 == 0 ? 'buzz' : nil }
