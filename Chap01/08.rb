def cipher(s)
  tab = ('a'..'z').map { |cp| (219-cp.ord).chr }.join
  p s.tr("a-z", tab)
end

print "メッセージを入力\n"
str = gets.chop
cipher(str)

###---- memo ----###
# tab : a to z の各文字の219からコードポイントを引いた値を格納した配列
# ord : 文字列の最初の文字のコードポイントを返す
# chr : 文字コードに対応する1バイトの文字列を返す
# tr  : 文字を置換
# gets: 入力
# chop: 改行コードを無視
