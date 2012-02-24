# -*- encoding: utf-8 -*-

bookseeds =
 [
  {:title => 'プログラミング言語Ruby' , :authers => 'まつもとゆきひろ', :publish_year => 2009, :comment => 'Comment', :checked_out => true},
  {:title => 'たのしいRuby' , :authers => '高橋 征義', :publish_year =>2010, :comment =>'Comment..', :checked_out => false},
  {:title => 'Ruby 逆引きレシピ すぐに美味しいサンプル' , :authers => '島田 浩二, 設樂 洋爾, 村田 賢太, 前田 智樹, 谷口 文威', :publish_year => 2009, :comment => '札幌Ruby', :checked_out => true},
  {:title => '初めてのRuby' , :authers => 'Yugui', :publish_year => 2008, :comment => 'Comment', :checked_out => true}
]

bookseeds.size.times do |n|
  Book.create(:title => bookseeds[n][:title],
              :authers => bookseeds[n][:authers],
              :publish_year => bookseeds[n][:publish_year],
              :comment => bookseeds[n][:comment],
              :checked_out => bookseeds[n][:checked_out])
end

200.times do |n|
  Book.create(:title => "Sample Book Title #{n}",
              :authers => "Sample Book Authers #{n}",
              :publish_year => 2000 + n%12,
              :comment => "sample comment",
              :checked_out => n%2 == 0)
end

# Cagtegory
[{:name => '技術書' , :color => '#D0755F' },
 {:name => '文庫'   , :color => '#043264' },
 {:name => '料理本' , :color => '#65A830' } ].each do |c|
  Category.create(:name => c[:name], :color => c[:color])
end
