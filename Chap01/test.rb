module Enumerable  
  def ngram(n)  
    each_cons(n).to_a  
  end  
end  
  
#if $0 == __FILE__  
  str = "I am an NLPer"  
  p str.chars.ngram(2)  
  p str.split(/\W+/).ngram(2)  
#end
