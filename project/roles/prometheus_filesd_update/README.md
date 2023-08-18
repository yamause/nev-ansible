# prometheus_filesd_update

Prometheusのファイルサービスディスカバリのファイルを作成するよ

## 変数

### `prometheus_config_path: str`  

Prometheusの設定ファイルのパス  
Default: `/etc/prometheus`  

### `prometheus_sd_file_path: str`

ファイルサービスディスカバリの設定ファイルパス  
Default: `{{ prometheus_config_path }}/sd_files`  

### `goss_dir_path: str`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_file_name: str`

クライアントに配置するgossファイル名  
Default: `prometheus_filesd.yml`  

## 環境変数

playbookを実行するコントロールノードに設定する必要がある環境変数  
### `NETBOX_TOKEN: str`

netboxのトークン  

### `NETBOX_API: str`

netboxのURL  
