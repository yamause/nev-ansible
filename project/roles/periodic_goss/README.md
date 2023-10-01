# goss_check

gossのインストール(バイナリコピー)および、gossでサーバテストを実行する  

## やってること

- ローカルからgoss実行バイナリを対象にコピー
- gossテストシナリオを配置するディレクトリを作成
- gossテストを実行
- discordに結果をPost

## 変数

### `goss_base_dir: str`

gossテストシナリオを配置するディレクトリ  
デフォルト値: `/usr/local/share/goss`  

### `discord_post_room: str`

宛先ルームID  
discord token: 変数 `{{ discord_token }}`  

デフォルト値: `1101883600309334156` (ネバネバンド開発部)  

### `discord_token: str`

discord Bot token  
デフォルト値: ないしょ  

### `post_url_to_discord: str`  

DiscordにUpするレポートURL
デフォルト値: [大室家](https://ichijin-plus.com/comics/2408795783205)
