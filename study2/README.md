# study2

[変数の使い方 - Terraformのきほんと応用](https://zenn.dev/sway/articles/terraform_biginner_varliable)

```
terraform init
terraform apply
terraform apply -var content="あいうえお" -var filename="かきくけこ.txt"
```

1回目 `terraform apply` を実行すると `default_input.txt` が生成される。  

2回目 `terraform apply -var content=...` を実行すると `default_input.txt` が削除され、新たに `かきくけこ.txt` が作成される。