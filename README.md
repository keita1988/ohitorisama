# README

## users テーブル
| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| nickname   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |

### Association

- has_many :tweets
- has_many :comments

## tweets テーブル

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| coffee_price | string  | null: false |
| tasty        | integer | null: false |
| relaxation   | integer | null: false |
| under_ground | integer | null: false |
| store_name   | string  | null: false |
| address      | string  | null: false |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| text       | text       | null: false |
| user       | references |             |
| tweet      | references |             |

### Association

- belongs_to :tweet
- belongs_to :user

