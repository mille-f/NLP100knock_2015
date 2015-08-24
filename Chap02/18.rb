# encoding: utf-8

fn = ARGV[0]
cols = []

File.open(fn, "r") do |file|
  file.each_line do |line|
    cols.push(line.split("\t"))
  end
end

cols.sort_by { |pref, city, temp, year| temp }.reverse_each do |res|
  puts res.join("\t")
end

###--- memo ---###
# sort_by : ブロックを使って要素をソートした配列を返す
# reverse_each : 降順
#
# unixコマンド sort -rk3 hightemp.txt 
