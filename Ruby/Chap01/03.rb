str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
p str.split(/\W+/).map(&:length)

###--- memo ---###
# split : 引数に正規表現を指定した場合は、そのパターンにマッチした部分で文字列を分割する
#
# /\W+/ : = [^a-zA-Z0-9_] 非単語構成文字の1回以上の繰り返し
