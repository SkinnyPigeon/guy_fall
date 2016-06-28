
def win?
  true
end

def building
  1..2.times do
    rand(5..7).times do |i|
      puts "|"
    end
    puts "-"
  end
end

# building