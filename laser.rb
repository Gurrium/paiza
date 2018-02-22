class Laser
  attr_reader :count

  def initialize(h, w, state, count)
    @h = h
    @w = w
    @state = state
    @count = count
  end

  # to rightward
  def rightward(row_index, column_index)
    (1...@w).each do |i|
      break if (column_index + i) > @w - 1
      
      @count += 1
          
      location = @state[row_index][column_index + i]
      if location == '\\'
        downward(row_index, column_index + i)
        break
      elsif location == '/'
        upward(row_index, column_index + i)
        break
      end
    end
  end

  # to leftward
  def leftward(row_index, column_index)
    (1...@w).each do |i|
      break if (column_index - i) < 0
      
      @count += 1
          
      location = @state[row_index][column_index - i]
      if location == '\\'
        upward(row_index, column_index - i)
        break
      elsif location == '/'
        downward(row_index, column_index - i)
        break
      end
    end
  end

  # to upward
  def upward(row_index, column_index)
    (1...@h).each do |i|
      break if (row_index - i) < 0
      
      @count += 1
          
      location = @state[row_index - i][column_index]
      if location == '\\'
        leftward(row_index - i, column_index)
        break
      elsif location == '/'
        rightward(row_index - i, column_index)
        break
      end
    end
  end

  # to downward
  def downward(row_index, column_index)
    (1...@h).each do |i|
      break if (row_index + i) > @h - 1 
          
      @count += 1
          
      location = @state[row_index + i][column_index]
      if location == '\\'
        rightward(row_index + i, column_index)
        break
      elsif location == '/'
        leftward(row_index + i, column_index)
        break
      end
    end
  end
end

count = 1
h, w = gets.split(' ').map(&:to_i)
state = []
h.times do |_|
  row = []
  row = gets.split('')
  row.pop
  state.push(row)
end

laser = Laser.new(h, w, state, count)
laser.rightward(0, 0)
puts laser.count
