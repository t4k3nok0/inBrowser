# inBrowser(mikutterplugin)
mikutterに簡易なブラウザタブを追加するためのプラグインです。
mikutter ってなに？という方は先にmikutterについて調べてみてください。

ブラウジング出来るだけの簡易的な作りになっているので（僕の技術力の低さの現れ）twitterで意味のわからない言葉が流れてきた時などにぱぱっと調べることができるぐらいの絶妙な便利さと粗雑さを持っています。

mikutterの使用上タブの幅が狭いことが多いため、スマホ版サイトを表示しますがmikutterの設定からPC版サイトの表示に切り替えることも可能です。なお、お手数ですが切り替える際にはmikutterの再起動をお願いします。再起動後タブが切り替わります。

ブラウザとして最低限必要である戻る・進む・更新のボタンはタブ内を右クリックするとコンテキストメニューが表示されますのでそちらで操作できます。

プラグインの初期設定ではgoogle.co.jpが開くはずです。googleは使わない！なんて方はプラグインを書き換えてください。
 webサイトなら大体何でも開けるはずなのでFacebookもできるし、えってぃな動画なども見ることも可能です。艦これも動作確認しましたので下に追記しています。

以下プラグインを参考に書きました（ほぼ模倣）ので紹介させていただきますありがとうございます

toshi_a氏のmikutter-kancolle プラグイン : https://github.com/toshia/mikutter-kancolle

kazukioishi氏のmikutter-imas プラグイン : https://github.com/kazukioishi/mikutter_imas


#  インストール方法(ArchLinux編)
$ git clone https://github.com/t4k3nok0/inBrowser.git ~/.mikutter/plugin/inBrowser

$ sudo pacman -S webkitgtk2

$ gem install webkit-gtk2

ArchLinux環境ではない人でも必要なものさえ分かればおそらくなんとできると思うので各自なんとかしてくださいお願いします。基本的にmikutterさえ動けばあとはwebkit-gtk2をインストールしていただければなんとかなると思います。

# How to 艦これ
toshi_a氏の艦これプラグインと同様なプラグインなのでmikutterでも艦これがしたい提督さん！FlashPlayerが導入されていれば艦これも動きます。（動きました）
ArchLinux環境では

$ pacman -S flashplugin

などをしてください他環境下でもFlashPlayerが入っていれば同様に動くはずです
