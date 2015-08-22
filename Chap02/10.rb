# encoding: utf-8

filename = ARGV[0]
File.open(filename, "r") do |file|
  r = file.count  # 行数
  file.rewind
  words = 0
  file.read.downcase.split(/\s/).each do |word|
    words += 1
  end
  w = words
  b = file.size
  printf("%3d %3d %3d %s\n", r, w, b, filename);
end

###---- memo ----###
# ARGV[0] : コマンドライン入力
# count   : 指定なしでは要素数をカウント
# rewind  : ポインタを先頭に戻す
#
# $<.count: => 24  このようにも書ける
# $<      : すべての引数または標準入力で構成される仮想ファイル
#
# unixコマンドでは、wc ファイル名
