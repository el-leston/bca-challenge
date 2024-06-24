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
| [aws_iam_role.lambda_exec_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_lambda_function.read_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_function.write_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_broker_url"></a> [broker\_url](#input\_broker\_url) | description | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rlambda_invoke_arn"></a> [rlambda\_invoke\_arn](#output\_rlambda\_invoke\_arn) | Read Invoke arn |
| <a name="output_rlambda_name"></a> [rlambda\_name](#output\_rlambda\_name) | Read lambda name |
| <a name="output_wlambda_invoke_arn"></a> [wlambda\_invoke\_arn](#output\_wlambda\_invoke\_arn) | Write Invoke arn |
| <a name="output_wlambda_name"></a> [wlambda\_name](#output\_wlambda\_name) | Write lambda name |
<!-- END_TF_DOCS -->