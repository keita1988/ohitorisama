# README

アプリケーション名
『お一人cafe』

アプリケーション概要
初めて立ち寄ったカフェや喫茶店の写真を投稿できるSNSです。更に『美味しさ度』『リラックス度』『アンダーグラウン度』を星5つで評価でき、更に住所も投稿できます。写真と星の評価からカフェの雰囲気をイメージでき、カフェ巡りが好きな方のお店選びのお役にたてます。またユーザー同士でコメントも残せるので投稿者と閲覧者間でコミュニケーションも取れます。

URL
https://ohitorisama.herokuapp.com/

利用方法
新規登録からユーザーを登録し、『つぶやく』というボタンをクリックして『コーヒー一杯の値段』『お店の名前』『お店の住所』を記述し、『美味しさ度』『リラックス度』『アンダーグラウン度』プルダウンから最大星5つ選択し写真を貼り付け『保存ボタン』をクリックする。

目指した課題解決
特にお洒落というわけでなく、目玉の商品があるわけではないが『落ち着ける』かつ『路地裏にひっそりと佇む』感がお気に入りのカフェを『ひっそり』と自慢したい時。
またお洒落で流行っているお店より年季の入った常連しか居ないような渋いお店を探したい方向けにこのアプリを作りました。

洗い出した要件
https://docs.google.com/spreadsheets/d/15touA74lWY57T2iP5AVNEXF5MC8cHQEBJ9c6acE1Oo4/edit#gid=282075926
一切の無駄を省き、登録に必要なデータはアドレス、パスワード、ニックネームのみにする事で間口の拾い物にする必要があります。
また短時間で簡単に投稿出来るよう、プルダウンで簡単に評価できるようにしました。

実装した機能について
トップページの写真から投稿詳細ページに遷移できます。投稿詳細ページのユーザーのニックネームからそのユーザーの過去のツイートも閲覧できコメントも残せるように実装しました。

実装予定の機能
ユーザー登録の機能の実装
短時間で簡単に投稿出来るプルダウンの実装
ユーザー同士で感想や情報を共有できるコメント機能の実装

データベース設計
https://gyazo.com/8815f25deb1ab2a9b53f508e6cc05844

ローカルでの動作方法




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

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| coffee_price    | string  | null: false |
| tasty_id        | integer | null: false |
| relaxation_id   | integer | null: false |
| under_ground_id | integer | null: false |
| store_name      | string  | null: false |
| address         | string  | null: false |
| wifi_id         | integer | null: false |


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
    

