# study3

[モジュールの使い方 - Terraformのきほんと応用](https://zenn.dev/sway/articles/terraform_biginner_modules)

```
terraform init
terraform plan
terraform apply
```

`main1.tf` と `main2.tf` の両方が実行される。

```
> terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.module_sample_foobar.local_file.helloworld will be created
  + resource "local_file" "helloworld" {
      + content              = "foo bar!"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "foobar.txt"
      + id                   = (known after apply)
    }

  # module.module_sample_main.local_file.helloworld will be created
  + resource "local_file" "helloworld" {
      + content              = "hello world!"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "hello.txt"
      + id                   = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
```

```
> terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.module_sample_foobar.local_file.helloworld will be created
  + resource "local_file" "helloworld" {
      + content              = "foo bar!"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "foobar.txt"
      + id                   = (known after apply)
    }

  # module.module_sample_main.local_file.helloworld will be created
  + resource "local_file" "helloworld" {
      + content              = "hello world!"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "hello.txt"
      + id                   = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.module_sample_main.local_file.helloworld: Creating...
module.module_sample_foobar.local_file.helloworld: Creating...
module.module_sample_main.local_file.helloworld: Creation complete after 0s [id=430ce34d020724ed75a196dfc2ad67c77772d169]
module.module_sample_foobar.local_file.helloworld: Creation complete after 0s [id=eb56f696a6d7771e6df30f577e84fe9eb2bcd5b2]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```