def stock_picker(days)
  difference = 0
  best_days = []
  days.each_with_index do |day, index|
    days.each_with_index do |new_day, new_index|
      if index<new_index
        if difference< new_day-day
          difference = new_day-day
          best_days = [index, new_index]
        end
      end
    end
  end
  return p best_days
end








stock_picker([17,3,6,9,15,8,6,1,10])