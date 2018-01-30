#===========================
#レビュー管理アプリケーション
#===========================

  # genre =  "映画"
  # title = "時をかける少女"
  # review = "人生の最高傑作アニメ。\n
  # 青春厨としてはたまらない甘酸っぱい青春ストーリー。\n
  # ちあきのイケメンさは言うまでもない。\n
  # 人にお金を払ってでもみて欲しい作品。\n
  # 早く見たほうがいいよ。
  # Time waits for no one."
  
  # puts"ジャンルを入力"
  # genre = gets  
  # puts"タイトルを入力"
  # title = gets
  # puts"レビューを記入"
  # review = gets
#getsは最後に改行が入る。
#chompで末尾の改行を削除。


  # puts "ジャンル : #{genre.chomp}\n#{line}"
  # puts"タイトル : #{title.chomp}\n#{line}"
  # puts"感想 :\n#{review.chomp}\n#{line}"
  
  # hash1 = {"title" => "るろうに剣心"}
  # hash2 = {:title => "時をかける少女"}
  # hash3 = {title: "君に届け"}
  # puts hash1
  # puts hash2
  # puts hash3
#ハッシュには{キー1 => 値1, キー2 => 値2, ...}のように書く。
#hash1とhash2はどちらも「title」というキーでハッシュを生成しています。
# hash1はキーを文字列"title"で指定しています。
# 一方、hash2はキーが:titleとなっていますね。
# これはシンボルと呼ばれるオブジェクトです。
# また、hash3はhash2と同義ですが、コードの量が少なく好んで使われるので覚えておきましょう。
#ハッシュ、文字列とシンボルの違い https://qiita.com/Kta-M/items/53a13ef60e14fcb41193
  
#=====配列====
  # pencil_case = ["ペン", "消しゴム", "定規"]
  # pencil_case << "メモ帳"
  # puts pencil_case
  # puts pencil_case.length

#======================
  
  def input_review(a_posts)
    #レビューを書く
   post = {}      # レビューの投稿を表す変数を定義# 空のハッシュの宣言
    #以下で要素の追加
    
    puts"ジャンルを入力"
    post[:genre] = gets.chomp
    puts"タイトルを入力"
    post[:title] = gets.chomp
    puts"レビューを記入"
    post[:review] = gets.chomp
    
    a_posts << post
    puts "No:#{a_posts.length}"
    line = "---------------------------"
    puts "ジャンル : #{post[:genre]}\n#{line}"
    puts"タイトル : #{post[:title]}\n#{line}"
    puts"感想 :\n#{post[:review]}\n#{line}"
    
    
  end
  
   #====================================-
  def read_reviews(a_posts)
    a_posts.each do |post|
      num = 0
      puts "[#{num}] #{post[:title]}のレビュー"
    end
    puts "見たいレビューの番号は？"
      number = gets.to_i
      
      post = a_posts[number]
      
      puts "No:#{a_posts.length}"
      line = "---------------------------"
      puts "ジャンル : #{post[:genre]}\n#{line}"
      puts"タイトル : #{post[:title]}\n#{line}"
      puts"感想 :\n#{post[:review]}\n#{line}"
  
  end
   #====================================-
  
  def end_program
    # プログラムを終了する
    exit
  end
   #====================================-
  def exception
    puts "入力された値は無効な値です"
  end
  #====================================-
  
  def appmain(a_posts)
    
    puts "レビュー数：#{a_posts.length}"
  
    puts"
    [0]レビューを書く
    [1]レビューを読む
    [2]アプリを終了する
    "
    puts "number is.."
    comand = gets
    number =  comand.to_i
    
      if number == 0 then
        input_review(a_posts)
        
      elsif number == 1 then
      #レビューを読む
        read_reviews(a_posts)
        
        
      
      elsif number == 2 then
      #end
         end_program
        
      else
        exception
        
      end

    
  end
  #==========================
  
  #定義
  posts = [ ]
    

  
  while true do
    appmain(posts)
      
  end
  
  
