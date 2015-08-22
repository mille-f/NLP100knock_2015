# encoding: utf-8

filename = ARGV[0]

File.open(filename, "r") do |file|
  file.read.downcase.split(/\n/).each do |line|
    puts line.gsub(/\t/, " ")
    #puts line.tr("\t", " ")
  end
end

###--- memo ---###
# gsub : 文字列で置換（正規表現で指定）
# tr   : 文字列で置換（文字列で指定）
