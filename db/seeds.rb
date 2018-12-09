# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# JpPrefecture::Prefecture.all.each do |pref|
#   Location.where(prefecture_code: pref.code).first_or_create
# end

breweries = [
  { japanese_name: "井賀屋酒造店", hiragana_name: "いがやしゅぞうてん", english_name: "Igaya Shuzōten", location_id: 20}, # 岩清水
  { japanese_name: "市野屋商店", hiragana_name: "いちのやしゅぞう", english_name: "Ichinoya Shuzō", location_id: 20 }, # 金蘭黒部
  { japanese_name: "伊東酒造", hiragana_name: "いとうしゅぞう", english_name: "Itō Shuzō", location_id: 20 }, # 横笛
  { japanese_name: "今井酒造店", hiragana_name: "いまいしゅぞうてん", english_name: "Imai Shuzōten", location_id: 20 }, #  若緑
  { japanese_name: "岩波酒造", hiragana_name: "いわなみしゅぞう", english_name: "Iwanami Shuzō", location_id: 20 }, # 岩波
  { japanese_name: "薄井商店", hiragana_name: "うすいしょうてん", english_name: "Usui Shōten", location_id: 20 }, # 白馬錦
  { japanese_name: "雲山銘醸", hiragana_name: "うんざんめいじょう", english_name: "Unzan Meijō", location_id: 20 }, # 雲山
  { japanese_name: "漆戸醸造", hiragana_name: "うるしどじょうぞう", english_name: "Urushido Jōzō", location_id: 20 }, # 井の頭
  { japanese_name: "遠藤酒造場", hiragana_name: "えんどうしゅぞうじょう", english_name: "Endō Shuzōjō", location_id: 20 }, # 渓流
  { japanese_name: "大國酒造", hiragana_name: "おおくにしゅぞう", english_name: "Ōkuni Shuzō", location_id: 20 }, # 大國
  { japanese_name: "大澤酒造", hiragana_name: "おおさわしゅぞう", english_name: "Ōsawa Shuzō", location_id: 20 }, # 大吉野
  { japanese_name: "大塚酒造", hiragana_name: "おおつかしゅぞう", english_name: "Ōtsuka Shuzō", location_id: 20 }, # 浅間嶽
  { japanese_name: "岡崎酒造", hiragana_name: "おかざきしゅぞう", english_name: "Okazaki Shuzō", location_id: 20 }, # 亀齢
  { japanese_name: "奥澤商会", hiragana_name: "おくさわしょうかい", english_name: "Okusawa Shōkai", location_id: 20 }, # 深志鶴
  { japanese_name: "尾澤酒造場" , hiragana_name: "おざわしゅぞうじょう", english_name: "Ozawa Shuzōjō", location_id: 20 }, # 美寿々錦
  { japanese_name: "小野酒造店", hiragana_name: "おのしゅぞうてん", english_name: "Ono Shuzōten", location_id: 20 }, # 夜明け前
  { japanese_name: "小布施酒造", hiragana_name: "おぶせしゅぞう", english_name: "Obuse Shuzō", location_id: 20 }, # 高井鶴
  { japanese_name: "柏屋酒造", hiragana_name: "かしわやしゅぞう", english_name: "Kashiwaya Shuzō", location_id: 20 }, # 玉泉
  { japanese_name: "角口酒造店", hiragana_name: "かどぐちしゅぞうてん", english_name: "Kadoguchi Shuzōten", location_id: 20 }, # 北光正宗
  { japanese_name: "亀田屋酒造店", hiragana_name: "かめたやしゅぞうてん", english_name: "Kametaya Shuzōten", location_id: 20 }, # 金蘭亀の世
  { japanese_name: "柄澤酒造店", hiragana_name: "からさわしゅぞうてん", english_name: "Karasawa Shuzōten", location_id: 20 }, # 信濃盛
  { japanese_name: "木内醸造", hiragana_name: "きうちじょうぞう", english_name: "Kiuchi Jōzō", location_id: 20 }, # 初鶯
  { japanese_name: "喜久水酒造", hiragana_name: "きくすいしゅぞう", english_name: "Kikusui Shuzō", location_id: 20 }, # 喜久水
  { japanese_name: "橘倉酒造", hiragana_name: "きつくらしゅぞう", english_name: "Kitsukura Shuzō", location_id: 20 }, # 菊秀
  { japanese_name: "協和酒造", hiragana_name: "きょうわしゅぞう", english_name: "Kyōwa Shuzō", location_id: 20 }, # ぼたん金蝶
  { japanese_name: "沓掛酒造", hiragana_name: "くつかけしゅぞう", english_name: "Kutsukake Shuzō", location_id: 20 }, # 福無量
  { japanese_name: "黒澤酒造", hiragana_name: "くろさわしゅぞう", english_name: "Kurosawa Shuzō", location_id: 20 }, # 井筒長
  { japanese_name: "高天酒造", hiragana_name: "こうてんしゅぞう", english_name: "Kōten Shuzō", location_id: 20 }, # 高天
  { japanese_name: "佐久の花酒造", hiragana_name: "さくのはなしゅぞう", english_name: "Sakunohana Shuzō", location_id: 20 }, # 佐久の花
  { japanese_name: "酒ぬのや本金酒造", hiragana_name: "さけぬのやほんきんしゅぞう", english_name: "Sakenunoya Honkin Shuzō", location_id: 20 }, # 本金
  { japanese_name: "笹井酒造", hiragana_name: "ささいしゅぞう", english_name: "Sasai Shuzō", location_id: 20 }, # 笹の誉
  { japanese_name: "志賀泉酒造", hiragana_name: "しがいずみしゅぞう", english_name: "Shigaizumi Shuzō", location_id: 20 }, # 志賀泉
  { japanese_name: "七福醸造", hiragana_name: "しちふくじょうぞう", english_name: "Shifuku Jōzō", location_id: 20 }, # 七福
  { japanese_name: "笑亀酒造", hiragana_name: "しょうきしゅぞう", english_name: "Shōki Shuzō", location_id: 20 }, # 笑亀
  { japanese_name: "信州銘醸", hiragana_name: "しんしゅうめいじょう", english_name: "Shinshū Meijō", location_id: 20 }, # 秀峰喜久盛
  { japanese_name: "仙醸", hiragana_name: "せんじょう", english_name: "Senjō", location_id: 20 }, # 黒松仙醸
  { japanese_name: "大信州酒造", hiragana_name: "だいしんしゅうしゅぞう", english_name: "Daishinshū Shuzō", location_id: 20 }, # 大信州
  { japanese_name: "大雪渓酒造", hiragana_name: "だいせっけいしゅぞう", english_name: "Daisekkei Shuzō", location_id: 20 }, # 大雪渓
  { japanese_name: "諏訪大津屋本家酒造", hiragana_name: "すわおおつやほんけしゅぞう", english_name: "Suwa Ōtsuya Honke Shuzō", location_id: 20 }, # ダイヤ菊
  { japanese_name: "高沢酒造", hiragana_name: "たかさわしゅぞう", english_name: "Takasawa Shuzō", location_id: 20 }, # 米川
  { japanese_name: "高橋助作酒造店", hiragana_name: "たかはしすけさくしゅぞうてん", english_name: "Takahashi Sukesaku Shuzōten", location_id: 20 }, # 松尾
  { japanese_name: "武重本家酒造", hiragana_name: "たけしげほんけしゅぞう", english_name: "Takeshige Honke Shuzō", location_id: 20 }, # 御園竹
  { japanese_name: "田中屋酒造店", hiragana_name: "たなかやしゅぞうてん", english_name: "Tanakaya Shuzōten", location_id: 20 }, # 水尾
  { japanese_name: "玉村本店", hiragana_name: "たまむらほんてん", english_name: "Tamamura Honten", location_id: 20 }, # 縁喜
  { japanese_name: "千曲錦酒造", hiragana_name: "ちくまにしきしゅぞう", english_name: "Chikuma Nishiki Shuzō", location_id: 20 }, # 千曲錦
  { japanese_name: "千野酒造場", hiragana_name: "ちのしゅぞうじょう", english_name: "Chino Shuzōjō", location_id: 20 }, # 桂正宗
  { japanese_name: "酒造長生社", hiragana_name: "しゅぞうちょうせいしゃ", english_name: "Shuzō Chōseisha", location_id: 20 }, # 信濃鶴
  { japanese_name: "土屋酒造店", hiragana_name: "つちやしゅぞうてん", english_name: "Tsuchiya Shuzōten", location_id: 20 }, # 亀の海
  { japanese_name: "天法酒造", hiragana_name: "てんぽうしゅぞう", english_name: "Tenpō Shuzō", location_id: 20 }, # 天法
  { japanese_name: "天領誉酒造", hiragana_name: "てんりょうほまれしゅぞう", english_name: "Tenryōhomare Shuzō", location_id: 20 }, # 天領誉
  { japanese_name: "豊島屋", hiragana_name: "としまや", english_name: "Toshimaya", location_id: 20 }, # 神渡
  { japanese_name: "戸塚酒造店", hiragana_name: "とつかしゅぞうてん", english_name: "Totsuka Shuzōten", location_id: 20 }, # 寒竹
  { japanese_name: "伴野酒造", hiragana_name: "とものしゅぞう", english_name: "Tomono Shuzō", location_id: 20 }, # 澤乃花
  { japanese_name: "中善酒造店", hiragana_name: "なかぜんしゅぞうてん", english_name: "Nakazen Shuzōten", location_id: 20 }, # 中乗さん
  { japanese_name: "長野銘醸", hiragana_name: "ながのめいじょう", english_name: "Nagano Meijō", location_id: 20 }, # オバステ正宗
  { japanese_name: "七笑酒造 ", hiragana_name: "ななわらいしゅぞう", english_name: "Nanawarai Shuzō", location_id: 20 }, # 七笑
  { japanese_name: "西飯田酒造店", hiragana_name: "にしいいだしゅぞうてん", english_name: "Nishi-Īda Shuzōten", location_id: 20 }, # 信濃光
  { japanese_name: "西尾酒造", hiragana_name: "にしおしゅぞう", english_name: "Nishio Shuzō", location_id: 20 }, # 木曽のかけはし
  { japanese_name: "東飯田酒造店", hiragana_name: "ひがしいいだしゅぞうてん", english_name: "Higashi-Īda Shuzōten", location_id: 20 }, # 本老の松
  { japanese_name: "福源酒造", hiragana_name: "ふくげんしゅぞう", english_name: "Fukugen Shuzō", location_id: 20 }, # 福源
  { japanese_name: "芙蓉酒造", hiragana_name: "ふようしゅぞう", english_name: "Fuyō Shuzō", location_id: 20 }, # 金宝芙蓉
  { japanese_name: "古屋酒造店", hiragana_name: "ふるやしゅぞうてん", english_name: "Furuya Shuzōten", location_id: 20 }, # 深山桜
  { japanese_name: "北安醸造", hiragana_name: "ほくあんじょうぞう", english_name: "Hokuan Jōzō", location_id: 20 }, # 北安大國
  { japanese_name: "舞姫", hiragana_name: "まいひめ", english_name: "Maihime", location_id: 20 }, # 信州舞姫　翠露
  { japanese_name: "桝一市村酒造場", hiragana_name: "ますいちいちむらしゅぞうじょう", english_name: "Masuichi Ichimura Shuzōten", location_id: 20}, # クウェア・ワン
  { japanese_name: "松葉屋", hiragana_name: "まつばや", english_name: "Matsubaya", location_id: 20 }, # 臥龍山
  { japanese_name: "松葉屋本店", hiragana_name: "まつばやほんてん", english_name: "Matsubaya Honten", location_id: 20 }, # 本吉乃川
  { japanese_name: "丸世酒造店", hiragana_name: "まるせしゅぞうてん", english_name: "Maruse Shuzōten", location_id: 20 }, # 勢正宗
  { japanese_name: "丸永酒造場", hiragana_name: "まるながしゅぞうじょう", english_name: "Marunaga Shuzōjō", location_id: 20 }, # 高波
  { japanese_name: "美寿々酒造", hiragana_name: "みすずしゅぞう", english_name: "Misuzu Shuzō", location_id: 20 }, # 美寿々
  { japanese_name: "宮坂酒造店", hiragana_name: "みやさかしゅぞうてん", english_name: "Miyasaka Shuzōten", location_id: 20 }, # 象山正宗
  { japanese_name: "宮坂醸造", hiragana_name: "みやさかじょうぞう", english_name: "Miyasaka Jōzō", location_id: 20 }, # 真澄
  { japanese_name: "宮島酒店", hiragana_name: "みやじまさけてん", english_name: "Miyajima Saketen", location_id: 20 }, # 信濃錦
  { japanese_name: "山岸酒店", hiragana_name: "やまぎしさけてん", english_name: "Yamagishi Saketen", location_id: 20 }, # 岸の松
  { japanese_name: "山謙酒造店", hiragana_name: "やまけんしゅぞうてん", english_name: "Yamaken Shuzōten", location_id: 20 }, # 姫百合
  { japanese_name: "山崎酒造", hiragana_name: "やまざきしゅぞう", english_name: "Yamazaki Shuzō", location_id: 20 }, # 山清
  { japanese_name: "山三酒造", hiragana_name: "やまさんしゅぞう", english_name: "Yamasan Shuzō", location_id: 20 }, # 真田六文銭
  { japanese_name: "湯川酒造店", hiragana_name: "ゆかわしゅぞうてん", english_name: "Yukawa Shuzōten", location_id: 20 }, # 木曽路
  { japanese_name: "善哉酒造", hiragana_name: "よいかなしゅぞう", english_name: "Yoikana Shuzō", location_id: 20 }, # 善哉
  { japanese_name: "横綱酒造", hiragana_name: "よこづなしゅぞう", english_name: "Yokotsuna Shuzō", location_id: 20 }, # 富士横綱
  { japanese_name: "米澤酒造", hiragana_name: "よねざわしゅぞう", english_name: "Yonezawa Shuzō", location_id: 20 }, # 今錦
  { japanese_name: "麗人酒造", hiragana_name: "れいじんしゅぞう", english_name: "Reijin Shuzō", location_id: 20 }, # 麗人
  { japanese_name: "若林醸造", hiragana_name: "わかばやしじょうぞう", english_name: "Wakabayashi Jōzō", location_id: 20 }, # 月吉野
  { japanese_name: "和田龍酒造", hiragana_name: "わだりゅうしゅぞう", english_name: "Wadaryū Shuzō", location_id: 20 } # 和田龍
]

breweries.each do |pref|
  Brewery.where(prefecture_code: pref.code).first_or_create
end