# encoding: utf-8

module Enumerable
  def ngram(n)
    each_cons(n).to_a
  end
end

str1 = "paraparaparadise"
str2 = "paragraph"

x = str1.chars.ngram(2)
y = str2.chars.ngram(2)

puts "和集合: #{x | y}"
puts "積集合: #{x & y}"
puts "差集合: #{x - y}"

if x.include?(%w[s e]) then
  puts "se は xに含まれる"
else 
  puts "se は xに含まれない"
end
if y.include?(%w[s e]) then
  puts "se は yに含まれる"
else
  puts "se は yに含まれない"
end

###---- memo ----###
# | : 和集合の演算子
# & : 積集合の演算子
# - : 差集合の演算子
