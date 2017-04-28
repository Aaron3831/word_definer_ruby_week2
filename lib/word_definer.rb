class Word
  attr_accessor(:word_add, :id)
  @@words_list = []

  def initialize(attributes)
    @word_add = attributes[:word_add]
    @id = @@words_list.length() + 1
  end

  def save
    @@words_list.push(self)
  end

  def self.all
    @@words_list
  end

  def self.clear
    @@words_list = []
  end

  def add_word(word)
    @word.push(word)
  end

  def add_definition(definition)
    @definition.push(definition)
  end

  def self.find (id)
    found_words = nil
    @@words_list.each() do |words|
      if words.id() == id.to_i
        found_words = words
      end
    end
    found_words
  end
end

class Definition
  attr_accessor(:definition_add)

  def initialize(attributes)
    @definition_add = attributes[:definition_add]

  end
end
