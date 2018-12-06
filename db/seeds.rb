# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JpPrefecture::Prefecture.all.each do |pref|
  Location.where(prefecture_code: pref.code).first_or_create
end

breweries = [
  { japanese_name: "井賀屋酒造店", hiragana_name: "いがやしゅぞうてん", english_name: "Igaya Shuzōten" }, # 岩清水
  { japanese_name: "市野屋商店", hiragana_name: "いちのやしゅぞう", english_name: "Ichinoya Shuzō" }, # 金蘭黒部
  { japanese_name: "伊東酒造", hiragana_name: "いとうしゅぞう", english_name: "Itō Shuzō" }, # 横笛
  { japanese_name: "今井酒造店", hiragana_name: "いまいしゅぞうてん", english_name: "Imai Shuzōten" }, #  若緑
  { japanese_name: "岩波酒造", hiragana_name: "いわなみしゅぞう", english_name: "Iwanami Shuzō" }, # 岩波
  { japanese_name: "薄井商店", hiragana_name: "うすいしょうてん", english_name: "Usui Shōten" }, # 白馬錦
  { japanese_name: "雲山銘醸", hiragana_name: "うんざんめいじょう", english_name: "Unzan Meijō" }, # 雲山
  { japanese_name: "漆戸醸造", hiragana_name: "うるしどじょうぞう", english_name: "Urushido Jōzō" }, # 井の頭
  { japanese_name: "遠藤酒造場", hiragana_name: "えんどうしゅぞうじょう", english_name: "Endō Shuzōjō" }, # 渓流
  { japanese_name: "大國酒造", hiragana_name: "おおくにしゅぞう", english_name: "Ōkuni Shuzō" }, # 大國
  { japanese_name: "大澤酒造", hiragana_name: "おおさわしゅぞう", english_name: "Ōsawa Shuzō" }, # 大吉野
  { japanese_name: "大塚酒造", hiragana_name: "おおつかしゅぞう", english_name: "Ōtsuka Shuzō" }, # 浅間嶽
  { japanese_name: "岡崎酒造", hiragana_name: "おかざきしゅぞう", english_name: "Okazaki Shuzō" }, # 亀齢
  { japanese_name: "奥澤商会", hiragana_name: "おくさわしょうかい", english_name: "Okusawa Shōkai" }, # 深志鶴
  { japanese_name: "尾澤酒造場" , hiragana_name: "おざわしゅぞうじょう", english_name: "Ozawa Shuzōjō" }, # 美寿々錦
  { japanese_name: "小野酒造店", hiragana_name: "おのしゅぞうてん", english_name: "Ono Shuzōten" }, # 夜明け前
  { japanese_name: "小布施酒造", hiragana_name: "おぶせしゅぞう", english_name: "Obuse Shuzō" }, # 高井鶴
  { japanese_name: "柏屋酒造", hiragana_name: "かしわやしゅぞう", english_name: "Kashiwaya Shuzō" }, # 玉泉
  { japanese_name: "角口酒造店", hiragana_name: "かどぐちしゅぞうてん", english_name: "Kadoguchi Shuzōten" }, # 北光正宗
  { japanese_name: "亀田屋酒造店", hiragana_name: "かめたやしゅぞうてん", english_name: "Kametaya Shuzōten" }, # 金蘭亀の世
  { japanese_name: "柄澤酒造店", hiragana_name: "からさわしゅぞうてん", english_name: "Karasawa Shuzōten" }, # 信濃盛
  { japanese_name: "木内醸造", hiragana_name: "きうちじょうぞう", english_name: "Kiuchi Jōzō" }, # 初鶯
  { japanese_name: "喜久水酒造", hiragana_name: "きくすいしゅぞう", english_name: "Kikusui Shuzō" }, # 喜久水
  { japanese_name: "橘倉酒造", hiragana_name: "きつくらしゅぞう", english_name: "Kitsukura Shuzō" }, # 菊秀
  { japanese_name: "協和酒造", hiragana_name: "きょうわしゅぞう", english_name: "Kyōwa Shuzō" }, # ぼたん金蝶
  { japanese_name: "沓掛酒造", hiragana_name: "くつかけしゅぞう", english_name: "Kutsukake Shuzō" }, # 福無量
  { japanese_name: "黒澤酒造", hiragana_name: "くろさわしゅぞう", english_name: "Kurosawa Shuzō" }, # 井筒長
  { japanese_name: "高天酒造", hiragana_name: "こうてんしゅぞう", english_name: "Kōten Shuzō" }, # 高天
  { japanese_name: "佐久の花酒造", hiragana_name: "さくのはなしゅぞう", english_name: "Sakunohana Shuzō" }, # 佐久の花
  { japanese_name: "酒ぬのや本金酒造", hiragana_name: "さけぬのやほんきんしゅぞう", english_name: "Sakenunoya Honkin Shuzō" }, # 本金
  { japanese_name: "笹井酒造", hiragana_name: "ささいしゅぞう", english_name: "Sasai Shuzō" }, # 笹の誉
  { japanese_name: "志賀泉酒造", hiragana_name: "しがいずみしゅぞう", english_name: "Shigaizumi Shuzō" }, # 志賀泉
  { japanese_name: "七福醸造", hiragana_name: "しちふくじょうぞう", english_name: "Shifuku Jōzō" }, # 七福
  { japanese_name: "笑亀酒造", hiragana_name: "しょうきしゅぞう", english_name: "Shōki Shuzō" }, # 笑亀
  { japanese_name: "信州銘醸", hiragana_name: "しんしゅうめいじょう", english_name: "Shinshū Meijō" }, # 秀峰喜久盛
  { japanese_name: "仙醸", hiragana_name: "せんじょう", english_name: "Senjō" }, # 黒松仙醸
  { japanese_name: "大信州酒造", hiragana_name: "だいしんしゅうしゅぞう", english_name: "Daishinshū Shuzō" }, # 大信州
  { japanese_name: "大雪渓酒造", hiragana_name: "だいせっけいしゅぞう", english_name: "Daisekkei Shuzō" }, # 大雪渓
  { japanese_name: "諏訪大津屋本家酒造", hiragana_name: "すわおおつやほんけしゅぞう", english_name: "Suwa Ōtsuya Honke Shuzō" }, # ダイヤ菊
  { japanese_name: "高沢酒造", hiragana_name: "たかさわしゅぞう", english_name: "Takasawa Shuzō" }, # 米川
  { japanese_name: "高橋助作酒造店", hiragana_name: "たかはしすけさくしゅぞうてん", english_name: "Takahashi Sukesaku Shuzōten" }, # 松尾
  { japanese_name: "武重本家酒造", hiragana_name: "たけしげほんけしゅぞう", english_name: "Takeshige Honke Shuzō" }, # 御園竹
  { japanese_name: "田中屋酒造店", hiragana_name: "たなかやしゅぞうてん", english_name: "Tanakaya Shuzōten" }, # 水尾
  { japanese_name: "玉村本店", hiragana_name: "たまむらほんてん", english_name: "Tamamura Honten" }, # 縁喜
  { japanese_name: "千曲錦酒造", hiragana_name: "ちくまにしきしゅぞう", english_name: "Chikuma Nishiki Shuzō" }, # 千曲錦
  { japanese_name: "千野酒造場", hiragana_name: "ちのしゅぞうじょう", english_name: "Chino Shuzōjō" }, # 桂正宗
  { japanese_name: "酒造長生社", hiragana_name: "しゅぞうちょうせいしゃ", english_name: "Shuzō Chōseisha" }, # 信濃鶴
  { japanese_name: "土屋酒造店", hiragana_name: "つちやしゅぞうてん", english_name: "Tsuchiya Shuzōten" }, # 亀の海
  { japanese_name: "天法酒造", hiragana_name: "てんぽうしゅぞう", english_name: "Tenpō Shuzō" }, # 天法
  { japanese_name: "天領誉酒造", hiragana_name: "てんりょうほまれしゅぞう", english_name: "Tenryōhomare Shuzō" }, # 天領誉
  { japanese_name: "豊島屋", hiragana_name: "としまや", english_name: "Toshimaya" }, # 神渡
  { japanese_name: "戸塚酒造店", hiragana_name: "とつかしゅぞうてん", english_name: "Totsuka Shuzōten" }, # 寒竹
  { japanese_name: "伴野酒造", hiragana_name: "", english_name: "" }, # 澤乃花
  { japanese_name: "中善酒造店", hiragana_name: "なかぜんしゅぞうてん", english_name: "Nakazen Shuzōten" }, # 中乗さん
  { japanese_name: "長野銘醸", hiragana_name: "ながのめいじょう", english_name: "Nagano Meijō" }, # オバステ正宗
  { japanese_name: "七笑酒造 ", hiragana_name: "ななわらいしゅぞう", english_name: "Nanawarai Shuzō" }, # 七笑
  { japanese_name: "西飯田酒造店", hiragana_name: "にしいいだしゅぞうてん", english_name: "Nishi-Īda Shuzōten" }, # 信濃光
  { japanese_name: "西尾酒造", hiragana_name: "にしおしゅぞう", english_name: "Nishio Shuzō" }, # 木曽のかけはし
  { japanese_name: "東飯田酒造店", hiragana_name: "ひがしいいだしゅぞうてん", english_name: "Higashi-Īda Shuzōten" }, # 本老の松
  { japanese_name: "福源酒造", hiragana_name: "ふくげんしゅぞう", english_name: "Fukugen Shuzō" }, # 福源
  { japanese_name: "芙蓉酒造", hiragana_name: "ふようしゅぞう", english_name: "Fuyō Shuzō" }, # 金宝芙蓉
  { japanese_name: "古屋酒造店", hiragana_name: "ふるやしゅぞうてん", english_name: "Furuya Shuzōten" }, # 深山桜
  { japanese_name: "北安醸造", hiragana_name: "ほくあんじょうぞう", english_name: "Hokuan Jōzō" }, # 北安大國
  { japanese_name: "舞姫", hiragana_name: "まいひめ", english_name: "Maihime" }, # 信州舞姫　翠露
  { japanese_name: "桝一市村酒造場", hiragana_name: "ますいちいちむらしゅぞうじょう", english_name: "Masuichi Ichimura Shuzōten" }, # クウェア・ワン
  { japanese_name: "松葉屋", hiragana_name: "まつばや", english_name: "Matsubaya" }, # 臥龍山
  { japanese_name: "松葉屋本店", hiragana_name: "まつばやほんてん", english_name: "Matsubaya Honten" }, # 本吉乃川
  { japanese_name: "丸世酒造店", hiragana_name: "まるせしゅぞうてん", english_name: "Maruse Shuzōten" }, # 勢正宗
  { japanese_name: "丸永酒造場", hiragana_name: "まるながしゅぞうじょう", english_name: "Marunaga Shuzōjō" }, # 高波
  { japanese_name: "美寿々酒造", hiragana_name: "みすずしゅぞう", english_name: "Misuzu Shuzō" }, # 美寿々
  { japanese_name: "宮坂酒造店", hiragana_name: "みやさかしゅぞうてん", english_name: "Miyasaka Shuzōten" }, # 象山正宗
  { japanese_name: "宮坂醸造", hiragana_name: "みやさかじょうぞう", english_name: "Miyasaka Jōzō" }, # 真澄
  { japanese_name: "宮島酒店", hiragana_name: "みやじまさけてん", english_name: "Miyajima Saketen" }, # 信濃錦
  { japanese_name: "山岸酒店", hiragana_name: "やまぎしさけてん", english_name: "Yamagishi Saketen" }, # 岸の松
  { japanese_name: "山謙酒造店", hiragana_name: "やまけんしゅぞうてん", english_name: "Yamaken Shuzōten" }, # 姫百合
  { japanese_name: "山崎酒造", hiragana_name: "やまざきしゅぞう", english_name: "Yamazaki Shuzō" }, # 山清
  { japanese_name: "山三酒造", hiragana_name: "やまさんしゅぞう", english_name: "Yamasan Shuzō" }, # 真田六文銭
  { japanese_name: "湯川酒造店", hiragana_name: "ゆかわしゅぞうてん", english_name: "Yukawa Shuzōten" }, # 木曽路
  { japanese_name: "善哉酒造", hiragana_name: "よいかなしゅぞう", english_name: "Yoikana Shuzō" }, # 善哉
  { japanese_name: "横綱酒造", hiragana_name: "よこづなしゅぞう", english_name: "Yokotsuna Shuzō" }, # 富士横綱
  { japanese_name: "米澤酒造", hiragana_name: "", english_name: "" }, # 今錦
  { japanese_name: "麗人酒造", hiragana_name: "れいじんしゅぞう", english_name: "Reijin Shuzō" }, # 麗人
  { japanese_name: "若林醸造", hiragana_name: "", english_name: "" }, # 月吉野
  { japanese_name: "和田龍酒造", hiragana_name: "わだりゅうしゅぞう", english_name: "Wadaryū Shuzō" } # 和田龍
]