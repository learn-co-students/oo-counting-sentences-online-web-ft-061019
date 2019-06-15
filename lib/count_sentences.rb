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
    self.split(/[?.!]/).delete_if {|w| w.size < 2}.size
    #return self.split(/[?.!]/).map.count need to figure out what is wrong here
  end
end