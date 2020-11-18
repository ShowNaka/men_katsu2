# men_katsu2 DB設計

## shopsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|(店名)
|prefecture_id|integer|null: false|(都道府県)
|address|string|null: false|(市区町村・番地)
|building_name|string|-------|(建物名・フロア)
|type_id|integer|null: false|(系統)
|feelings|text|-------|(感想)

## Association

- belongs_to_active_hash :type
- belongs_to_active_hash :prefecture


## 今後の追加実装予定

- ユーザー機能の追加
- お店の画像を保存
- その店で食べたメニューを追加
- 行った回数を都度カウント
- 自己評価ができる
- トップページからでもお店の系統をわかりやすくする