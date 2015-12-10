str = gets.chop
str.split(/\s/).map { |w|
  if w.size <= 4 then
    print w + " "
  else
    print w[0] + w[1..-2].chars.shuffle.join + w[-1] + " "
  end
}

###---- memo ----###
# shuffle : 文字列をシャッフル
