# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!
class Thesaurus
  def initialize(input_hash)
    super(input_hash)
    @thesaurus = input_hash[:thesaurus]
  end

  def add_synonym(input)
    @synonym << input
  end

  def add_antonym(input)
    @antonym << input
  end

  def delete_word
  end
end

class Entry < Thesaurus
  attr_reader :synonym, :antonym
  attr_accessor :word

  def initialize(input_hash)
    @word = input_hash[:word]
    @synonym = input_hash[:synonym]
    @antonym = input_hash[:antonym]
  end
end

dog = Entry.new(word: "dog", synonym: "mutt", antonym: "cat")
p dog.add_synonym("perro")



