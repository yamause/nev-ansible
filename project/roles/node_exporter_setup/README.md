# node_exporter_setup

node-exporterのインストールおよびデーモン化をするよ  
## 変数

### `node_exporter_bin_ver: str`

インストールするnode-exporterのVersionを指定  
Default: netbox services custom_field version の値を参照  

### `node_exporter_bin_dist: str`

インストールするnode-exporterの種類を指定  
Default: `linux-amd64`  

### `node_exporter_bin_file: str`

node-exporterバイナリファイル名  
Default: `node_exporter-{{ node_exporter_bin_ver }}.{{ node_exporter_bin_dist }}`  

### `node_exporter_bin_dl_url: str`

node-exporter Download URL  
Default: https://github.com/prometheus/node_exporter/releases/download  

### `node_exporter_bin_dl_file: str`

node-exporter Install URL  
Default: `{{ node_exporter_bin_dl_url }}/v{{ node_exporter_bin_ver }}/{{ node_exporter_bin_file }}.tar.gz`  

### `node_exporter_install_path: str`

node-exporterの実行ファイルを配置するディレクトリ  
Default: `/usr/local/bin`  

### `node_exporter_listen_ports: list`

node-exporterのリッスンポート  
Default: netbox services port の値を参照  

### `node_exporter_listen_addresses: list`

node-exporterのリッスンアドレス  
Default: netbox services address の値を参照  

### `goss_dir_path: str`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_file_name: str`

クライアントに配置するgossファイル名  
Default: `node-exporter.yml`  
