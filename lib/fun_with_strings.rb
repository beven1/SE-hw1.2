module FunWithStrings
  def palindrome?
    # your code here
    if self.downcase == self.reverse.downcase || 
        self.delete("^a-zA-z").downcase == self.delete("^a-zA-z").reverse.downcase
        return true
    end
  end
  
  def count_words
    # your code here
    hash = Hash.new(0)
    word = self.delete("^A-Za-z\s*")
    word_list = word.split(' ')
    word_list.each { |word_in_list|
        hash[word_in_list.downcase] += 1
    }
    return hash
  end
  
  def anagram_groups
    # your code here
    
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
