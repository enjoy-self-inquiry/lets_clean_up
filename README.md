# README

# まち美化支援アプリ

## 概要
公園遊具の破損や放置自転車などを発見した際に、写真付きで地図上にレポートを投稿することができるアプリ
市民から投稿された内容を受けて、自治体が対応をし、完了報告と対応内容を確認することができます。

## バージョン情報
Ruby 2.6.5,Rails 5.2.6

## カタログ設計
https://docs.google.com/spreadsheets/d/17J_3O0Dc_SbYxZYF0BRbp9TO5KQKmThhbVDW1_Xzbqg/edit?usp=sharing

## 機能一覧
- [ ] ログイン機能
- [ ] ユーザー登録機能
- [ ] 管理者機能
- [ ] 担当部署機能
　- [ ] 管理者が、各投稿に対して担当部署名をラベルの形で付与できる
- [ ] パスワード再設定機能
- [ ] レポート投稿一覧表示機能
　- [ ] コメント数を表示
　- [ ] 担当部署名を表示
- [ ] レポート投稿機能
　- [ ] タイトル、レポートコメント、写真、進捗状況、地図表示機能は必須
- [ ] レポート投稿編集機能
- [ ] レポート投稿削除機能
　- [ ] 投稿の編集は投稿者のみ可能
　- [ ] 投稿の削除は投稿者・担当部署・管理者のみ可能
- [ ] コメント投稿機能
- [ ] コメント削除機能
- [ ] コメント編集機能
　- [ ] コメント編集と削除は投稿者・担当部署・管理者のみ可能
- [ ] メール送信機能
  - [ ] 完了時に、投稿者宛にメールを送ることができるようにする
- [ ] AWS

## テーブル定義書
https://docs.google.com/spreadsheets/d/198CFON3ZeLaEFg_buQBcSsmhrx6P4Lvs9mAhtrlKDkA/edit?usp=sharing

## ER図
https://drive.google.com/file/d/1NoczdiBLnPDXujOC_SBjHk61jbhSBwKA/view?usp=sharing

## 画面遷移図
https://cacoo.com/diagrams/WB9alzIYoQp7Ibn5/5BFBE

## ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1BAi2C-EiQZWqjE8m5PQ_NCutsAyq1HfLV4yKr5qY-_s/edit?usp=sharing

## 使用予定Gem
+ devise　・・・ログイン機能の実装を補助するgem
+ letter_opener_web
+ faker ・・・シードデータの生成
+ kaminari
+ geocoder　・・・投稿時に入力した住所をGoogleMapに表示させるために導入します。
+ carrierwave
