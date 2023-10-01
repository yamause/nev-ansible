# sssd_ldap

LDAPクライアントにsssdのインストールと設定をやるよ  

## やること

- sssdのインストール
- sssdの設定変更
- sshdでldapを用いた公開鍵認証できるように設定
- PAM設定
- gossのテストシナリオ作成


## ロール変数

### `goss_sub_dir: str`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_template_file: str`

gossテストシナリオのテンプレートファイル名  
Default: `sssd_ldap_gossfile.j2`

### `goss_file_name: str`

クライアントに配置するgossファイル名  
Default: `sssd_ldap.yml`  
