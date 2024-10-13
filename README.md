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
