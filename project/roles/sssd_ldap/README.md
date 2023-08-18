# sssd_ldap

LDAPクライアントにsssdのインストールと設定をやるよ  

## やること

- sssdのインストール
- sssdの設定変更
- sshdでldapを用いた公開鍵認証できるように設定
- PAM設定
- gossのテストシナリオ作成

## 変数

### `goss_dir_path: str`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_file_name: str`

クライアントに配置するgossファイル名  
Default: `sssd_ldap.yml`  
