# LocationProvider

接続中のユーザーの現在の位置情報を管理・送信するAPIです。
暫定で5秒に1回データを送信します。

## how to build

```shell
docker compose build
docker compose up -d
```

## how to use

**暫定実装のためws://localhost/ws/example-user-id** で接続してください

for wscat

```shell
wscat -c ws://localhost/ws/<適当なユーザーID>
```

コピペ用
```
wscat -c ws://localhost/ws/example-user-id
```


サンプルデータ:
```json
{
	"action":"UPDATE_CHARACTER_POS",
	"characters":[
		{
			"pos_x":114.514,
			"pos_y":114.514,
			"url":"https://example.cloudfront.net/image/character_1.png",
			"user_id":"example-user-id"
		},
		{
			"pos_x":810.514,
			"pos_y":810.514,
			"url":"https://example.cloudfront.net/image/character_1.png",
			"user_id":"example-user-id"
		}
	]
}
```

```json
{
	"action":"UPDATE_CHARACTER_POS",
	"user_id":"example-user-id",
	"pos_x":114.514,
	"pos_y":114.514
}

// one liner
{"action":"UPDATE_CHARACTER_POS","user_id":"example-user-id","pos_x":114.514,"pos_y":114.514}

```


チャットのスキーマ

```json
{
    "action":"ACTION_CHAT_MESSAGE",
    "user_id":"examper-user-id",
    "message":"hogehoge"
}
```
