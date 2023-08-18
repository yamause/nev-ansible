# Ansibleの取説！

[Wikiも見てね](https://www.notion.so/Ansible-ea90229069fc470e90e4958492cb90dd?pvs=4)

# Quick Start

## Install

``` shell
git clone git@nev-yo-sv-gitlab-01.asaasahi.com:neverneband/nev-ansible.git
python -m venv .venv --upgrade-deps
source .venv/activate
pip install -r requirements.txt
```

## Playbookの実行

``` shell
# ansible-playbookコマンドで実行する場合
ansible-playbook -i inventory \
--ask-vault-password \
--extra-vars=@extvars.yml \
project/playbook.yml
```

- `-i inventory`  
    - 管理ターゲットのリストファイルを選択  
- `--ask-vault-password`  
    - 秘密変数を格納した暗号化ファイルを解凍するパスワードを対話モードで入力  
- `--extra-vars=@extvars.yml`  
    - 変数の取り込み. ファイルから取り込む場合, 接頭辞に@をつける.  
- `project/playbook.yml`  
    - 実行するPlaybookの指定.　適宜書き換え.

## その他有用なコマンド

Playbookを実行するターゲットホストのリストを表示  

``` shell
ansible-playbook -i inventory project/playbook.yml --list-hosts
```

inventoryにリストされているホスト情報の表示  

``` shell
# groupとホストの対応を表示
ansible-inventory -i inventory --graph

# ホスト変数の表示
ansible-inventory -i inventory --host nev-ke-sv-prom-01.asaasahi.com
```

# 事前準備

## 秘密変数（vault file）

Tokenやログイン情報などの機密情報は `extvars.yml` ファイルに変数を格納し暗号化している  
[`ansible-vault`](https://docs.ansible.com/ansible/latest/cli/ansible-vault.html) コマンドを使って管理する  

```
# ファイルの編集
ansible-vault edit extvars.yml
```

## 環境変数の準備

netboxのinventoryおよび、queryを使用する場合は下記の環境変数を設定する  

```
export NETBOX_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
export NETBOX_API=http://nev-ke-co-netbox-01.asaasahi.com
```