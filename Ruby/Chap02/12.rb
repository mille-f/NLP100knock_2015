# encoding: utf-8

filename = ARGV[0]

File.open(filename, "r") do |file|
  File.open("col1.txt", "w") do |file1|
    File.open("col2.txt", "w") do |file2|
      file.read.downcase.split(/\n/).each do |line|
        col = line.split("\t")
        file1.puts col[0]
        file2.puts col[1]
      end
    end
  end
end

###--- memo ---###
# puts : IO用の出力メソッド
#
# unixコマンド cut -f 1 hightemp.txt > col1.txt | cut -f 2 hightemp.txt > col2.txt
