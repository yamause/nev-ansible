# grafana_setup

Grafanaのインストール実行role  

## やってること

- GPG key ダウンロード
- grafanaのインストール
- LDAP設定
## Example Playbook

```
- name: Install Grafana
  hosts: service_grafana-server
  roles:
    - role: grafana_setup
      tags: grafana
```

## 変数
### `install_version`

grafana-serverのインストールVersionの指定  
Default: netbox services custom_field version の値を参照  

### `grafana_listen_port`

grafana-serverのリッスンポート  
Default: netbox services port の値を参照  


### `grafana_listen_address`

grafana-serverのリッスンアドレス  
Default: netbox services address の値を参照  


### `goss_dir_path`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_file_name`

クライアントに配置するgossファイル名  
Default: `grafana.yml`  


## 参考

Grafana Labos  
https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/  
