require('pry-byebug')

@guy1 = [['|'],
        ['|','','', 0, 0], 
        ['|','-','|','/'],
        ['|','/',' ','\.'],
        ['|']]


@guy2 = [['|'],
        ['|','\.', '|',' '],
        ['|',' ', '-', 0],
        ['|','/', '\.', 0],
        ['|']]

@guy3 = [['|'],
        ['|','\.', ' ', '/'],
        ['|','/', '|', '-'],
        ['|','0', '0', ' '],
        ['|']]

@guy4 = [['|'],
        ['|','0', '\.', '/'],
        ['|','0', '-', ' '],
        ['|',' ', '|', '\.'],
        ['|']]

@guys = [@guy1, @guy2, @guy3, @guy4]

def guy(lines)
  for line in lines
    print line.join(" ")
    puts
  end
end

def animate
  sleep(0.1)
  system"clear"

end

def win?
  true
end

def guy_fall(guy1, guy2, guy3, guy4)
  # 1..2.times do
    guy(guy1)
    animate
    guy(guy2)
    animate
    guy(guy3)
    animate
    guy(guy4)
    animate
  # end
end


def ledge
  choose_guy = rand(0..3)
  @replace = @guys[choose_guy]
  @replace.pop
  @replace.concat([['-']])
  guy(@guys[choose_guy])
  sleep(0.1)
  system("clear")
end

def first_push
  case 

    when @replace == @guy1
      @guy1.pop
      @guy1.concat([['|']])
      @guy2[3].shift
      @guy2[3].unshift('-')
      return

    when @replace == @guy2
      @guy2.pop
      @guy2.concat([['|']])
      @guy3[3].shift
      @guy3[3].unshift('-')
      return

    when @replace == @guy3
      @guy3.pop
      @guy3.concat([['|']])
      @guy4[3].shift
      @guy4[3].unshift('-')
      return

    when @replace == @guy4
      @guy4.pop
      @guy4.concat([['|']])
      @guy1[3].shift
      @guy1[3].unshift('-')
      return

  end
end



# binding.pry
guy_fall(@guy1, @guy2, @guy3, @guy4)
ledge
first_push
guy_fall(@guy1, @guy2, @guy3, @guy4)
binding.pry
nil
# guy_fall(@guy1, @guy2, @guy3, @guy4)
# return_guy(@guys)















