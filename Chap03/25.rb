fn = "uk.txt"

regex1 = /((?:{{基礎情報.*\n)(|.*?\n)+(?:}}))/
regex2 = /(?:\|)(.*?)(?:\s=\s)(.*?)(?:\n)/

range = File.read(fn).scan(regex1).join.scan(regex2).to_h

p range

###--- memo ---###
# regex1 : 基礎情報の部分のみ抽出
# regex2 : ◯◯ = ◯◯ の部分を抽出
