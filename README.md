# 江添亮の入門C++

~~まだ書きかけ。~~

~~モチベーション維持のために公開~~

江添氏はそんなことを言っていますが、実際には既に出版されています。

ただし、*.mdファイルは主に画像周りに「TODO」が含まれていたり若干不完全です。

GitHub Pagesでの閲覧

<https://ezoeryou.github.io/cpp-intro/>

## PDFはどこ？
上の[releases](https://github.com/kurema/cpp-intro/releases)にあります。

元のレポジトリではPDFファイルが転がってなかったので、いくつかの欠損ファイル(*.eps)を補完してPDFを作成しました。
難しい事を考えなくてもダウンロードして普通に使えます

WSLのUbuntu 16.04.6 LTSでコンパイルしました。
おそらくファイルロックのタイミングの関係でdvipdfmxに失敗するので、1秒間のsleepを追加しています。
WSLのせいだと思います。

## 問題
フォントが出版版と少し違うようです。
「中ゴシックBBB」や「リュウミンライト」とかのフォントは持っていません。

図版(6点)を書き直したので若干違いがあるようです。

何より目立つのが、表紙を作り直したことです。
インパクトのある例の顔写真が利用できないので、動きをランダム生成した[デッサン人形モデル](https://github.com/kurema/RhinoArchitecturalLibrary)で代用しました。

トンボ付きのPDFなんて欲しい人はいないと思うので、トンボは削除しています。
トンボ付きにしたければTeX/cpp-intro.texの```%\Tombowtrue```周りを編集してください。
ただし、表紙がずれると思います。

## 紙の本が欲しい
紙の本は[こちら](https://www.amazon.co.jp/dp/4048930710/)から入手できます。
またはお近くの適当な書店まで。

## アプリ版が欲しい
Androidアプリ版を作ろうとしています。
あなたがこれを読んでる頃には飽きて開発を止めてたり、リリースされていたりするかもしれません。

## Thanks
[源ノ角ゴシック](https://github.com/adobe-fonts/source-han-sans)と[源ノ明朝](https://github.com/adobe-fonts/source-han-serif)を利用しています。

## ライセンス

GPLv3
