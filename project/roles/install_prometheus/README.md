# install_prometheus

prometheusのインストールおよびデーモン化をするよ  

## デフォルト変数

### `install_prometheus_bin_versionsion: str`

インストールするprometheusのVersionを指定  

Default: netbox services custom_field version の値を参照  

### `install_prometheus_bin_dist: str`

インストールするprometheusの種類を指定  
Default: `linux-amd64`  

### `install_prometheus_bin_file: str`

prometheusバイナリファイル名  
Default: `prometheus-{{ install_prometheus_bin_version }}.{{ install_prometheus_bin_dist }}`  

### `install_prometheus_bin_dl_url: str`

prometheus Download URL  
Default: https://github.com/prometheus/prometheus/releases/download  

### `install_prometheus_bin_dl_file: str`

prometheus Install URL  
Default: `{{ install_prometheus_bin_dl_url }}/v{{ install_prometheus_bin_version }}/{{ install_prometheus_bin_file }}.tar.gz`  

### `install_prometheus_install_path: str`

prometheusの実行ファイルを配置するディレクトリ  
Default: `/usr/local/bin`  

### `install_prometheus_listen_ports: list`

prometheusのリッスンポート
Default: netbox services port の値を参照

### `install_prometheus_listen_addresses: list`

prometheusのリッスンアドレス  
Default: netbox services address の値を参照  

### `install_prometheus_dbdata_path: str`

Prometheusのデータ保存先  
Default `/var/prometheus/data`  

### `install_prometheus_config_path: str`  

Prometheusの設定ファイルのパス  
Default: `/etc/prometheus`  

### `install_prometheus_sd_file_path: str`

ファイルサービスディスカバリの設定ファイルパス  
Default: `{{ install_prometheus_config_path }}/sd_files`  

## ロール変数

### `goss_sub_dir: str`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_template_file: str`

gossテストシナリオのテンプレートファイル名  
Default: `prometheus_gossfile.j2`

### `goss_file_name: str`

クライアントに配置するgossファイル名  
Default: `prometheus.yml`  
