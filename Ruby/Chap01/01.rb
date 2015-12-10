# coding: utf-8

str = "パタトクカシーー"
str.each_char.with_index {|s, idx|
  print s if idx.odd?
}
