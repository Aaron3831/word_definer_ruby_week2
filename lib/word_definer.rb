class Word
  attr_accessor(:word_add)

  def initialize(attributes)
    @word_add = attributes[:word_add]

  end
end

class Definition
  attr_accessor(:definition_add)

  def initialize(attributes)
    @definition_add = attributes[:definition_add]
    
  end
end
