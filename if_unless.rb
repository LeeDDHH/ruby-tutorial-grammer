def judge_score(score)
  # ここにコードを書いてください
  return puts "不合格です" unless score >= 60

  if score >= 90
    puts "大変優秀な成績です"
  elsif score >= 80
    puts "優秀な成績です"
  elsif score >= 70
    puts "良い成績です"
  else
    puts "合格です"
  end
end

judge_score(91)
judge_score(81)
judge_score(71)
judge_score(61)
judge_score(59)
