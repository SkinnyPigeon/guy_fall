require('pry-byebug')



class Guy

  attr_reader(:form)

  def initialize(form)
    @form = form
  end

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

  def self.guy_fall(guy1, guy2, guy3, guy4)
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

  def ledge
    a = rand(0..3)
    b = @guys[a]
    b.delete_at(0)
    b.concat([['-']])
  end

  def return_guy(guys)
    result = guys.each { |guy| guy[4] } 
    binding.pry
    return result
  end

end

@guy1=Guy.new([['|'],
              ['|','','', 0, 0], 
              ['|','-','|','/'],
              ['|','/',' ','\.'],
              ['|']])


@guy2=Guy.new([['|'],
              ['|','\.', '|',' '],
              ['|',' ', '-', 0],
              ['|','/', '\.', 0],
              ['|']])

@guy3=Guy.new([['|'],
              ['|','\.', ' ', '/'],
              ['|','/', '|', '-'],
              ['|','0', '0', ' '],
              ['|']])

@guy4=Guy.new([['|'],
              ['|','0', '\.', '/'],
              ['|','0', '-', ' '],
              ['|',' ', '|', '\.'],
              ['|']])

@guys=[@guy1, @guy2, @guy3, @guy4]

binding.pry
nil