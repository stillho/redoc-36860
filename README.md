# アプリ名
Redoc

# 概要
情報を入力すると、その情報に対応する書類のフォーマットを提案するアプリ

# 本番環境
https://redoc-36860.herokuapp.com/

ログイン情報（テスト用）
. Eメール :abc@abc
. パスワード :q1w2e3r4

# 制作背景
20代~30代のサラリーマンは仕事も忙しく、それに伴った書類作成も多いという問題を抱えている。しかし、この年代は、仕事とプライベートのメリハリをしっかりとつけ、休日はしっかりとプライベートな時間を持ちたい。そんな仕事と休日を分けたいビジネスマンが、書類作成を少しでも効率化できるようにこのアプリを作成しようと考えた。

# DEMO
###### トップページ（書類一覧機能）
![image](https://user-images.githubusercontent.com/91117539/155460122-f0cb51e1-1019-4d8f-852b-5c20c01ccaa9.png)

# 実装予定の内容
.新規作成機能
.書類詳細機能
.書類編集機能
.書類削除機能
.書類更新機能

# DB設計
## usersテーブル

| Column             | Type   | Options                   |
| -------------------| ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| profile            | text   | null: false               |
| occupation         | text   | null: false               |
| position           | text   | null: false               |

### Association
- has_many : docs
- has_many : comments

## - docsテーブル

| Column     | Type       | Options                 |
| ---------- | ---------- | ----------------------- |
| title      | string     | null: false             |
| catch_copy | text       | null: false             |
| concept    | text       | null: false             |
| user       | references | null: false, foreign_key|

### Association
- belongs_to : users
- has_many : comments

## commentsテーブル

| Column     | Type       | Options                 |
| ---------- | ---------- | ----------------------- |
| content    | text       | null: false             |
| doc        | references | null: false,foreign_key |
| user       | references | null: false, foreign_key|

### Association
- belongs_to : users
- belongs_to : docs