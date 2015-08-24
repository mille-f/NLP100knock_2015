# encoding: utf-8

fn = ARGV[0]
cols = []
cnt = Hash.new {0}

File.open(fn, "r") do |file|
  file.each_line do |line|
    cols.push(line.split("\t"))
    pref = line.split("\t")[0]
    cnt[pref] += 1
  end
end

cols.sort_by { |pref, city, temp, year| [cnt[pref], pref] }.reverse_each do |res|
  puts res.join("\t")
end

###--- memo ---###
# sort_by の ブロックで、不必要な物は省略可 => |pref, |
#
# unixコマンド cut -f1 hightemp.txt | sort | uniq -c | sort -r
