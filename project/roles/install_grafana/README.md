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

## デフォルト変数
### `install_grafana_version`

grafana-serverのインストールVersionの指定  
Default: netbox services custom_field version の値を参照  

### `install_grafana_listen_port`

grafana-serverのリッスンポート  
Default: netbox services port の値を参照  


### `install_grafana_listen_address`

grafana-serverのリッスンアドレス  
Default: netbox services address の値を参照  

## ロール変数

### `goss_sub_dir`

gossテストシナリオを配置するディレクトリ  
Default: `/usr/local/share/goss/ansible_auto_create`  

### `goss_file_name`

クライアントに配置するgossファイル名  
Default: `grafana.yml`  

### `goss_template_file`

gossテストシナリオのテンプレートファイル名  
Default: grafana_gossfile.j2  

## 参考

Grafana Labos  
https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/  
