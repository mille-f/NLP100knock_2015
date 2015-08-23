# encoding: utf-8

fn = ARGV[0]
n  = ARGV[1].to_i

File.open(fn, "r") do |file|
  file.reverse_each.lazy.first(n).reverse.each do |line|
    puts line
  end
end

###--- memo ---###
# reverse_each : 末尾から順に要素の数だけブロックを繰り返す
# lazy : 遅延評価を行う
# first : Enumerable オブジェクトの最初のn要素を返す
#
# unixコマンド tail -10 ファイル名
