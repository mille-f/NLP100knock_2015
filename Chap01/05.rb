module Enumerable
  def ngram(n)
    each_cons(n).to_a
  end
end

str = "I am an NLPer"
p str.split(/\W+/).ngram(2)
p str.split(/\s*/).ngram(2)

###---- memo ----###
# module Enumerable : オブジェクトのeachメソッドを呼び出す
#
# each_cons : 指定した数の要素を繰り返し取り出して、ブロックを実行
#
# \s* : 0個以上の空白
