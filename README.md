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
| where doc  | text       | null: false             |
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