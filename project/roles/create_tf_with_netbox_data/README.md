# create_tf_with_netbox_data

TerraformのProxmox Providerで利用するtfファイルをnetboxの登録情報をもとに生成するよ  
対象となるVMは下記のパラメータが登録されているVMだよ  

- tag: [terraform](http://nev-ke-co-netbox-01.asaasahi.com/extras/tags/3/)
- cluster type: [proxmox-ve](http://nev-ke-co-netbox-01.asaasahi.com/virtualization/cluster-types/2/)


## やること

- tfファイルの生成

## 変数

## 環境変数

playbookを実行するコントロールノードに設定する必要がある環境変数  
### `NETBOX_TOKEN: str`

netboxのトークン  

### `NETBOX_API: str`

netboxのURL  
