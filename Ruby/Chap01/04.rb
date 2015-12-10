str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can." # 文字列
word = str.split(/\W+/) # 単語に分ける
num = [1,5,6,7,8,9,15,16,19] # 番号表
ans = {}  # 答えとなる連想配列

word.each_with_index do |w, i|
  if num.include?(i+1) then # 反復係数+1が番号表に含まれているか？
    ans.store(w[0,1], i+1)  # 連想配列に先頭1文字と値を格納
  else
    ans.store(w[0,2], i+1)  # 連想配列に先頭2文字と値を格納
  end
end

p ans # 答えの出力
