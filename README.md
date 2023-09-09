# Ansibleの取説！

[Wikiも見てね](https://www.notion.so/Ansible-ea90229069fc470e90e4958492cb90dd?pvs=4)

# Quick Start

## Install

``` bash
git clone git@nev-yo-sv-gitlab-01.asaasahi.com:neverneband/nev-ansible.git
python -m venv .venv --upgrade-deps
source .venv/activate
bash install.sh
```

## 変数設定

``` bash
vim env/extravars

# env/extravars 編集画面
---
ansible_user: your_name
ansible_become_password: your_password
ansible_ssh_private_key_file: ~/.ssh/your_private.key
```

## Playbookの実行

``` bash
# ansible-playbookコマンドで実行する場合
ansible-playbook \
--ask-vault-password \
project/playbook.yml
```

- `-i inventory`  
    - 管理ターゲットのリストファイルを選択  
- `--ask-vault-password`  
    - 秘密変数を格納した暗号化ファイルを解凍するパスワードを対話モードで入力  
- `project/playbook.yml`  
    - 実行するPlaybookの指定.　適宜書き換え.

共通ユーザでのログイン情報や変数は `inventory/group_vars/all/vault` に暗号化した状態で保存している  
ローカルユーザで実行する場合は `env/extravars` にログイン情報を記述して変数を上書きする  

## その他有用なコマンド

Playbookを実行するターゲットホストのリストを表示  

``` bash
ansible-playbook -i inventory project/playbook.yml --list-hosts
```

inventoryにリストされているホスト情報の表示  

``` bash
# groupとホストの対応を表示
ansible-inventory -i inventory --graph

# ホスト変数の表示
ansible-inventory -i inventory --host nev-ke-sv-prom-01.asaasahi.com
```

# 事前準備

## 秘密変数（vault file）

Tokenやログイン情報などの機密情報は `inventory/group_vars/all/vault` ファイルに変数を格納し暗号化している  
[`ansible-vault`](https://docs.ansible.com/ansible/latest/cli/ansible-vault.html) コマンドを使って管理する  

[参考: 公式リファレンス best practices](https://docs.ansible.com/ansible/latest/tips_tricks/ansible_tips_tricks.html#keep-vaulted-variables-safely-visible)

```bash
# ファイルの編集
ansible-vault edit inventory/group_vars/all/vault
```

機密情報は `inventory/group_vars/all/vault` に記述する
変数名は接頭辞に `vault_` をつける

```bash
# inventory/group_vars/all/vault
vault_ansible_user: username
```

実際に利用する変数は `inventory/group_vars/all/main.yml` に記述する
vaultで適宜した変数を代入する
暗号化する必要のない変数は main.yml に直接記述して良い

```bash
# inventory/group_vars/all/main.yml
ansible_user: "{{ vault_ansible_user }}"
```

## 環境変数の準備

netboxのinventoryおよび、queryを使用する場合は下記の環境変数を設定する  

```
export NETBOX_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export NETBOX_API=http://nev-ke-co-netbox-01.asaasahi.com
```
