# subumiru

## 開発
## パッケージの依存関係をyamlファイルに合わせる
flutter pub get


## 便利機能
## slackの使い方
拡張機能のアプリとしてgithub,notion,figma and figjamを入れると便利（レビューの通知が来たりする）

## vscode の拡張機能
・github copilotは最初めんどくさいかもだけど絶対入れる
→コーディングには単純作業がつきものなので、AIが読み取ってやってくれるから作業効率UP
→chatはゴミなんで（使わなくて）いいです

## chrome の拡張機能
refined githubを使うと誰のプルリクか一目でわかるので便利

# 使い方ガイド
## git pushコマンドの簡略化
git config --global --add --bool push.autoSetupRemote true
を実行すると、git pushと打つだけで、git push origin HEADができます

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## ローカルポートの立ち上げ
## main.dart
flutter run lib/main.dart
とすると、数字を選ぶ画面が出てくる（mac用やipad用ではないので、全員使えるchromeの"3"を使う）→mainのwidgetbookが立ち上げに成功

## wighetbook
flutter run lib/widgetbook.dart //一度に一つしか立ち上げられない

## Dart の静的解析ツール（リンター）が提示する問題
## 赤波線（エラー）
必ず修正するべき：コードがコンパイルエラーや実行時エラーを引き起こす可能性がある問題を示します。これらは修正しないとコードが正しく動作しません。

## 黄波線（警告）
修正を推奨：パフォーマンスや将来的なバグの原因となる可能性がある問題を示します。可能な限り修正することが望ましいですが、必須ではありません。
ex 使ってない関数をimportしているなど、普通に自分が悪いやつ

## 青波線（情報・提案）
参考程度：コードの改善点やスタイルの提案を示します。必ずしも修正する必要はありませんが、コードの品質向上に役立ちます。
青線を放置していても基本的には動くけど、problemとして同じ枠で埋まってしまうので、可読性の問題からプルリクの前に全部処理するというルールにします

## 頻出の青波線（これにないやつであったら書き足して下さい）
・引数としてchild や children パラメータが最後に配置されていない（Flutterはこういうルールらしい）

・ファイル名がlower_case_with_underscores（すべて小文字でアンダースコア区切り）になっていない（camelCase（キャメルケース）になっている）
DartおよびFlutterでは、以下のような命名規則が推奨されています：

ファイル名: 小文字とアンダースコアを使用（例: primary_button.dart）
クラス名: パスカルケースを使用（例: PrimaryButton）
変数名・メソッド名: キャメルケースを使用（例: onPressed）

・Key? keyの宣言やsuper(key: key)の呼び出している、（コンストラクタ内でsuper.keyを使用することで冗長でなくなる）
→これは結構気をつけたほうが良さそう、dartのアプデによって追加された機能らしいので、gptで出力させたらこうなる？

・print を使っている（Flutterにはconsole.がないので、logging パッケージなどのロギングフレームワークを使ってログを管理しなければならない）
→特にprintならではの問題はなく、開発中はフットワーク軽くログを出したいと思うのでとりあえず通します