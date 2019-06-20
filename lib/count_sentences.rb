require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    count = 0
    self.split.each do |item|
      if item.end_with?(".") || item.end_with?("!") || item.end_with?("?")
        count += 1
      end
    end
    count
  end
end