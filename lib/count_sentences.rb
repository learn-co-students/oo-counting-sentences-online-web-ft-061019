require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.split(/[\.\?\!]/)
    counter = 0 
    sentence_array.each do |sentence| 
      counter += 1 unless sentence.length <= 1
    end
    counter
  end
end