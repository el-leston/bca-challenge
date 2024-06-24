<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_mq_broker.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/mq_broker) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mq_sg"></a> [mq\_sg](#input\_mq\_sg) | description | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | list of subnet ids for mq broker | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mq_broker_url"></a> [mq\_broker\_url](#output\_mq\_broker\_url) | broker url |
<!-- END_TF_DOCS -->