class Word
  attr_reader(:word_add, :id)
  @@words_list = []

  def initialize(attributes)
    @word_add = attributes[:word_add]
    @id = @@words_list.length() + 1
    @word_add_list = []
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

  def add_word(word_add)
    @word_add_list.push(word_add)
  end

  def add_definition(definition)
    @definition.push(definition)
  end

  def self.find (id)
    found_word = nil
    @@words_list.each() do |word|
      if word.id() == id.to_i
        found_word = word
      end
    end
    found_word
  end
end

class Definition
  attr_reader(:definition_add)

  def initialize(attributes)
    @definition_add = attributes[:definition_add]

  end
end
