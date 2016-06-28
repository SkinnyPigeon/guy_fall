require('pry-byebug')

class Guy

  attr_reader(:form)

  def initialize(form)
    @form = form
  end

end

guy1=Guy.new([['|'],
        ['|','','', 'O', 'O'], 
        ['|','-','|','/'],
        ['|','/',' ','\.'],
        ['|']])

binding.pry
nil