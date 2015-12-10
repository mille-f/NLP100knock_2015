# encoding: utf-8

fn = ARGV[0]
cols = []

File.open(fn, "r") do |file|
  file.each_line do |line|
    cols.push(line.split("\t")[0])
  end
end

puts cols.sort.uniq

###--- memo ---###
# sort : utf-8だと漢字は部首の画数順にソートされる
# uniq : 重複した要素を削除
#
# unixコマンド cut -f1 hightemp.txt | sort | uniq
