fn = "uk.txt"

regex1 = /((?:{{基礎情報.*\n)(|.*?\n)+(?:}}))/
regex2 = /(?:\|)(.*?)(?:\s=\s)(.*?)(?:\n)/

range = File.read(fn).scan(regex1).join.scan(regex2).to_h

range.map do |field, value|
  range[field] = value.gsub(/('{2,3}|'{5})([^']+)/, '\2')
end

p range

###--- memo ---###
# '' => 弱い強調  ''' => 強調  ''''' => 強い強調
#
# {n,m} : 直前の正規表現のn回からm回の繰り返し
# {n}   : 直前の正規表現のn回の繰り返し
# [^']+ : ' 以外の文字の1回以上の連続
# \2    : パターン中の（）に当てはまる部分（2つ目の括弧）
