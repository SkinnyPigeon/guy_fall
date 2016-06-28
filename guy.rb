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
  1..2.times do
    guy(guy1)
    animate
    guy(guy2)
    animate
    guy(guy3)
    animate
    guy(guy4)
    animate
  end
end
binding.pry
guy_fall(@guy1, @guy2, @guy3, @guy4)














