# goss_add_file

gossのテストシナリオを作成する  
当ロールは直接利用せずサーバの構成を変更するtask及びroleより呼び出して利用されることを想定している  

## やってること

- Gossファイル配置ディレクトリの作成
- Gossファイルの生成

## 利用サンプル

``` yaml
- name: Include Goss add file role
  ansible.builtin.include_role:
    name: goss_add_file
```

## 呼び出し元で設定する変数およびtemplates

当ロール内では基本的に変数を設定せず呼び出し元で定義された下記の変数の値を利用する  
これはincludeで当ロールを呼び出した際に呼び出し元の変数よりも優先度が高いため上書きしてしまうのを防止するため  

呼び出し元ではgossファイルのソースとなる templates を `gossfile.j2` という名前で配置する

### サンプル  

defaultsでの変数の設定  

``` yaml
# Use in goss_add_file role
goss_dir_path: /usr/local/share/goss/ansible_auto_create
goss_file_name: "grafana.yml"
```

templates ディレクトリ配下にgossファイルのソースとなる `gossfile.j2` を配置

``` shell
templates/
└── gossfile.j2
```

### `goss_file_name: str`

クライアントに配置するgossファイル名  

### `goss_dir_path: str`

gossテストシナリオを配置するディレクトリ  
特に理由が必要がなければ `/usr/local/share/goss/ansible_auto_create` を設定することを推奨とする  
