fn = "uk.txt"

regex = /(?:ファイル:|\[\[File:)(.*?)\|(?:.*?)/

File.read(fn).scan(regex) do |media, other|
  puts media
end

###--- memo ---###
# ファイル: [[FIle: [[ファイル: のメディアファイルを抽出
