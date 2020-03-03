def lscan; gets.split.map(&:to_i); end

n,m = lscan
sc = m.times.map{lscan}

0.upto(999) do |x|
  t = x.to_s
  next if t.size != n # 桁数チェック

  if sc.all?{|s,c| t[s-1] == c.to_s} # 全部の要素が正かチェック。重複のものはここではじく
    p x
    exit
  end
end
p -1