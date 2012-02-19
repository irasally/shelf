# -*- encoding: utf-8 -*-

bookseeds =
 [
  {:title => 'プログラミング言語Ruby' , :authers => 'まつもとゆきひろ', :publish_year => 2009, :comment => 'Comment', :checked_out => false},
  {:title => 'たのしいRuby' , :authers => '高橋 征義', :publish_year =>2010, :comment =>'Comment..', :checked_out => false},
  {:title => 'Ruby 逆引きレシピ すぐに美味しいサンプル' , :authers => '島田 浩二, 設樂 洋爾, 村田 賢太, 前田 智樹, 谷口 文威', :publish_year => 2009, :comment => '札幌Ruby', :checked_out => true},
  {:title => '初めてのRuby' , :authers => 'Yugui', :publish_year => 2008, :comment => 'Comment', :checked_out => true}
]

bookseeds.size.times do |n|
  Book.create(:title => bookseeds[n][:title],
              :authers => bookseeds[n][:authers],
              :publish_year => bookseeds[n][:publish_year],
              :comment => bookseeds[n][:comment],
              :checked_out => bookseeds[n][:checked_out],)
end
