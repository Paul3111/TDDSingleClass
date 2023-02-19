class GrammarStats
  def initialize
    @strings_checked = []
  end

  def check(text)
    @text = text
    punctuation_marks = [".","!","?"]
    return fail "There is no input!" if @text == nil
    if @text == ""
      return "String is empty! Try again!"
    else
      @text.chr == @text.chr.upcase &&
      punctuation_marks.include?(@text[-1])? result = true : result = false
      @strings_checked << result
    end
    
  end

  def percentage_good
    good_texts = @strings_checked.count(true)
    return result = (good_texts * 100 / @strings_checked.length).to_i
  end
end