
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: ture|
|email|text|null: false, unique: ture|
|password|integer|null: false|

### Association
- has_many :masseages
- has_many :groups_users
- has_many :group, through: :groups_users


## massegesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|group_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|title|text|null: false|

### Association
- has_many :masseage
- has_many :groups_users
- has_many :users, through: :groups_users

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

* ...
