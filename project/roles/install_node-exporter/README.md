# node_exporter_setup

node-exporterのインストールおよびデーモン化をするよ  

## デフォルト変数

### `install_node_exporter_bin_version: str`

インストールするnode-exporterのVersionを指定  
Default: netbox services custom_field version の値を参照  

### `install_node_exporter_bin_dist: str`

インストールするnode-exporterの種類を指定  
Default: `linux-amd64`  

### `install_node_exporter_bin_file: str`

node-exporterバイナリファイル名  
Default: `node_exporter-{{ install_node_exporter_bin_version }}.{{ install_node_exporter_bin_dist }}`  

### `install_node_exporter_bin_dl_url: str`

node-exporter Download URL  
Default: https://github.com/prometheus/node_exporter/releases/download  

### `install_node_exporter_bin_dl_file: str`

node-exporter Install URL  
Default: `{{ install_node_exporter_bin_dl_url }}/v{{ install_node_exporter_bin_version }}/{{ install_node_exporter_bin_file }}.tar.gz`  

### `install_node_exporter_install_path: str`

node-exporterの実行ファイルを配置するディレクトリ  
Default: `/usr/local/bin`  

### `install_node_exporter_listen_ports: list`

node-exporterのリッスンポート  
Default: netbox services port の値を参照  

### `install_node_exporter_listen_addresses: list`

node-exporterのリッスンアドレス  
Default: netbox services address の値を参照  

## ロール変数

### `goss_sub_dir: str`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_template_file: str`

gossテストシナリオのテンプレートファイル名  
Default: `node-exporter_gossfile.j2`

### `goss_file_name: str`

クライアントに配置するgossファイル名  
Default: `node-exporter.yml`  
