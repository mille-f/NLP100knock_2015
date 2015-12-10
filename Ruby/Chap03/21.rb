fn = "uk.txt"
file = open(fn)

file.each_line do |line|
  puts line if line.include?("Category:")
end

###--- memo ---###
# include? : 指定した文字列が含まれているか判定
