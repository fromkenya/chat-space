# DB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true, unique: true|
|mail|string|null: false, index: true, unique: true|

### Association
- has_many :members, through: groups
- has_many :members
- has_many :messages

## members table

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false|
|group_id|references|null: false|

### Association
- belongs_to :user
- belongs_to :group

## groups table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :members, through: users
- has_many :members
- has_many :masseages

## messages table

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user_id|references|null: false|
|group_id|references|null: false|

### Association
- belongs_to :user
- belongs_to :group

