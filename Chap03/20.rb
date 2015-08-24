require 'json'

fn = "jawiki-country.json"

file = open(fn)

file.each_line do |line|
  json = JSON.load(line)
  puts json['text'] if json['title'] == "イギリス"
end

###--- memo ---###
# gzファイルの解凍 gzip -d jawiki-country.json
# 
# load : ハッシュに変換（parseも同様）
