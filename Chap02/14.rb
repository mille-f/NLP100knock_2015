# encoding: utf-8

fn = ARGV[0]
n  = ARGV[1].to_i

File.open(fn, "r") do |file|
  file.read.downcase.split("\n").each.with_index(1) do |line, i|
    puts line
    break if n <= i 
  end
end

###--- memo ---###
# each.with_index : インデックス付きの繰り返し
#
# unixコマンド head -10 ファイル名
