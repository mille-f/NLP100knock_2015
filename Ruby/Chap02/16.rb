# encoding: utf-8 

fn = ARGV[0]
n  = ARGV[1].to_i

lines = File.open(fn).readlines   # 各行を配列に格納
row =  File.read(fn).count("\n")  # ファイルの行数
dev = if row % n == 0 then        # 分割行数
        row / n
      else
        row / n + 1
      end
out = "aa"                        # 出力ファイル名（xaa, xab...）

lines.each_slice(dev) do |perti|
  File.open("x#{out}", "w") do |file|
    perti.each do |line|
      file.puts line
    end
  end
  out.next!
end

###--- memo ---###
# readlines : 行を読み込む
# IO#lineno : ファイルの行数をカウント
# each_slice : 指定した数の要素を繰り返し取り出して、ブロックを実行
# next : 一つ移動（a→b, 1→2）
#
# unixコマンド split -l 5 hightemp.txt
