# prometheus_setup

prometheusのインストールおよびデーモン化をするよ  
## 変数

### `prometheus_bin_ver: str`

インストールするprometheusのVersionを指定  

Default: netbox services custom_field version の値を参照  

### `prometheus_bin_dist: str`

インストールするprometheusの種類を指定  
Default: `linux-amd64`  

### `prometheus_bin_file: str`

prometheusバイナリファイル名  
Default: `prometheus-{{ prometheus_bin_ver }}.{{ prometheus_bin_dist }}`  

### `prometheus_bin_dl_url: str`

prometheus Download URL  
Default: https://github.com/prometheus/prometheus/releases/download  

### `prometheus_bin_dl_file: str`

prometheus Install URL  
Default: `{{ prometheus_bin_dl_url }}/v{{ prometheus_bin_ver }}/{{ prometheus_bin_file }}.tar.gz`  

### `prometheus_install_path: str`

prometheusの実行ファイルを配置するディレクトリ  
Default: `/usr/local/bin`  

### `prometheus_listen_ports: list`

prometheusのリッスンポート
Default: netbox services port の値を参照

### `prometheus_listen_addresses: list`

prometheusのリッスンアドレス  
Default: netbox services address の値を参照  

### `prometheus_dbdata_path: str`

Prometheusのデータ保存先  
Default `/var/prometheus/data`  

### `netbox_url: str`

netboxのURL  
Default: http://nev-ke-co-netbox-01.asaasahi.com  

### `netbox_token: str`

netboxのトークン  
Default: `ea4562ce173eeefdf002e176663d6e88d8ea020c`  

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
Default: `prometheus.yml`  
