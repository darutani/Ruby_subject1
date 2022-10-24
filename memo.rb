require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
memo_type = gets.chomp.to_i # ユーザーの入力値を取得し、数字へ変換しています

until memo_type == 1 || memo_type == 2 do
  puts "1か2を入力してください。"
  puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
  memo_type = gets.chomp.to_i
end

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp

  p "メモしたい内容を記入してください"
  p "完了したら ctrl + d をおします"

  memo_content = $stdin.read

  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << [memo_content]
  end

elsif memo_type == 2
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp

  p "メモしたい内容を記入してください"
  p "完了したら ctrl + d をおします"

  memo_content = $stdin.read

  CSV.open("#{file_name}.csv", "a") do |csv|
    csv << [memo_content]
  end

else
end