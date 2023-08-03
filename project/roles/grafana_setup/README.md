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

## 参考

Grafana Labos
https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/
