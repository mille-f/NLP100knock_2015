# encoding: utf-8

file1 = ARGV[0]
file2 = ARGV[1]

File.open(file1, "r") do |f1|
  File.open(file2, "r") do |f2|
    f1.zip(f2).each do |col1, col2|
      puts "#{col1.chop}\t#{col2}"
    end
  end
end

###--- memo ---###
# zip : 配列の配列を作成
# each do |変数1, 変数2| : ブロック内に複数の変数を取ることも出来る
#
# unixコマンド paste col1.txt col2.txt 
