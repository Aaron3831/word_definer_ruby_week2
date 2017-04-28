require('rspec')
require('word_definer')

describe('Word')  do
  describe('#attr_accessor')  do
    it("will return a word to the page")  do
      test_word = Word.new({:word_add=> "Granite"})
      expect(test_word.word_add()).to eq("Granite")
    end
  end
end

describe('Definition') do
  describe('#attr_accessor') do
    it("will return a definition to the page") do
      test_definition = Definition.new({:definition_add=> "a very hard, granular, crystalline, igneous rock consisting mainly of quartz, mica, and feldspar"})
      expect(test_definition.definition_add()).to eq("a very hard, granular, crystalline, igneous rock consisting mainly of quartz, mica, and feldspar")
    end
  end
end

describe("#save") do
  it "returns words" do
    test_word = Word.new({:word_add=> "Granite"})
    test_word.save()
    expect(Word.all()).to eq([test_word])
  end
end
