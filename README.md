# アプリ概要 #
手描きクアッカワラビーの癒し系アプリです！<br>
クアッカワラビーの着せ替えや食べ物抽選などができます。<br>
何かしらの生き物のアプリを作りたいと思って、妹にテキトーに動物を呟いてもらったのがクアッカワラビーだったのでこうなりました☻<br>

## ●ホーム画面 ##
・「回す!」ボタンで食べ物抽選+ランダムで装飾がつきます。<br>
・「おきがえ」ボタンで着せ替え画面へ。<br>
・クアッカワラビー画像をタップするとちょっとしたアニメーションが出てきます。(場所によって全3通り)<br>
・「?」ボタンで上記のような説明が出てきます。<br>
<div style="text-align: center;">
    <img src="home.png" width="200">
</div><br>

## ●抽選結果画面 ##
ホーム画面で「回す!」ボタンを押した時の遷移後の画面です！<br>
食べ物抽選+ランダムで装飾がつきます。装飾を含めない32通りのうち当たりは4通り、装飾も含めると全約40000通りです多分。<br>
<div style="text-align: center;">
    <img src="roulette.png" width="200">
</div><br>

## ●着せ替え画面 ##
ホーム画面で「おきがえ」ボタンを押した時の遷移後の画面です！<br>
クアッカワラビーの着せ替えと表情変更ができます。頭・目元・胸元・背中・目・口パーツがあります。真ん中のバーで部位切り替えができます。<br>
<div style="text-align: center;">
    <img src="okigae.png" width="200">
</div><br><br>

# 環境 #
・**Flutter** 3.13.6<br>
・**OS** Windows10<br><br>

# 設計方針 #
そんなに規模が大きくないので、あまりクラス分けたりしてないです…画像を使うところはImage.asset()を用いています。<br>
・main.dart：ホーム画面<br>
・roulette.dart：ルーレット表示と「回す!」ボタン<br>
・result.dart：抽選結果画面<br>
・fashion.dart：着せ替え画面<br><br>

# 工夫したところ #
・ホーム画面にポップアップつけてみたこと。<br>
・抽選でただランダムなだけだと物足りないと思い、レア枠を作ったこと。<br>
・着せ替え画面のデザインを個人的よく見る感じにしたこと。また色の構成を橙や黄にして統一感を持たせようとしたこと。<br>
・クアッカワラビーや着せ替えアイテムの作画をなるべくシンプルかつかわいくしようとしたこと。